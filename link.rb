Plugin.is {
    name "Link"
    version "0.1alpha"
    author "d4l3k"
    description "Advanced Sign Based Operations in Minecraft."
    commands :title => {
        :description => "Sets a title for a player.",
        :usage => "/title <player> <title>\n/title <title>",
        :aliases => [ :settitle]
    }
    commands :link => {
        :description => "Controls Link.",
        :usage => "/<command> edit/off",
    }
}

$LOAD_PATH.unshift( File.dirname(__FILE__) )

import 'java.util.logging.Logger'
import 'java.util.logging.Level'
import 'org.bukkit.event.Event'
import 'org.bukkit.event.player.PlayerInteractEvent'
import 'org.bukkit.event.block.SignChangeEvent'
import 'org.bukkit.block.Block'
import 'org.bukkit.entity.Player'
import 'org.bukkit.ChatColor'
import 'org.bukkit.Material'
import 'org.bukkit.event.block.Action'
import 'org.bukkit.craftbukkit.block.CraftSign'

require 'yaml'

def add_type name, type
	$link.gate_ref.store name.downcase, type
end

class Link < RubyPlugin
	attr_accessor :gate_ref
	#### I/O to Console ####
	# TODO: Set logger prefix & use @log.info, @log.debug, etc.
	def info msg # Standard output to console.
		# Uses bash escape codes for pretty colors.
		@logger.info "\e[36m[\e[32mLink\e[36m] #{msg}\e[0m"
	end
	def debug msg # Debug output to console.
		# Uses bash escape codes for pretty colors.
		@logger.info "\e[33m[\e[32mLink\e[33m] #{msg}\e[0m"
	end
	def err msg # Used for error messages.
		# Uses bash escape codes for pretty colors.
		@logger.log Level::WARNING, "\e[31m[\e[32mLink\e[31m] #{msg}\e[0m"
	end
	def load_gates
		gate_file = File.join(File.dirname(__FILE__),"./link/gates.yml")
		if File.exists?(gate_file)
			File.open(gate_file, "r") do |object|
				if object!=""
					$gates = YAML::load(object)
				end
			end
			if $gates==nil
				$gates = []
			end
			destroyed_types = []
			$gates.each do |gate|
				mat = gate.block.get_block.getType
				if !(mat==Material::WALL_SIGN||mat==Material::SIGN_POST||mat==Material::SIGN)
					destroyed_types.push gate.name
					gate.destroy	
				end
			end
			if destroyed_types!=[]
				debug "Relic Gates: #{destroyed_types.to_s}"
			end
			info "Loaded #{$gates.length} gates."
		else
			info "No gate file found."
		end
		$gates.each do |gate|
			gate.resume
		end
	end
	def save_gates
		gate_file = File.join(File.dirname(__FILE__),"./link/gates.yml")
		File.open(gate_file, "w") do |file|
			file.print YAML::dump($gates)
		end
		debug "Saved #{$gates.length} gates."
	end
	def get_gate block
		b = nil
		$gates.each do |gate|
			if gate.block.get_block==block
				return gate
			end
		end
		return nil
	end
	def load_types
		req = lambda do |file|
			debug "Load: "+file
			load file
		end
		i = 0
		5.times {Dir.glob(File.absolute_path(File.join(File.dirname(__FILE__),"link/gates/*#{'/*'*i}.rb"))){|file| req.call(file)};i+=1}
		debug "Loaded: #{@gate_ref.length} gate references. #{@gate_ref.to_s}"
		debug "Loaded: #{@gate_ref.values.uniq.length} unique gates types. #{@gate_ref.values.uniq.to_s}"
	end
	def onEnable
		$link = self
		@logger = Logger.getLogger("Minecraft")
		@gate_ref = {}
		@player_status = {}
		$gates=[]
		load_types
		load_gates
		registerEvent(Event::Type::SIGN_CHANGE, Event::Priority::Monitor) do |event|
			type = event.getLine(0).strip.downcase
			gate_class = @gate_ref[type]
			if gate_class!=nil
				$gates.push gate_class.new event
				save_gates
			end
		end
		registerEvent(Event::Type::BLOCK_BREAK, Event::Priority::Monitor) do |event|
			block = event.getBlock
			mat = block.getType
			if (mat==Material::WALL_SIGN||mat==Material::SIGN_POST)
				gate = get_gate block
				if gate!=nil
					event.getPlayer.sendMessage("[LINK] "+ChatColor::RED.toString+"Gate Destroyed! "+gate.name)
					gate.destroy
					save_gates
				end
			end
		end
		registerEvent(Event::Type::REDSTONE_CHANGE, Event::Priority::Monitor) do |event|
			block = event.getBlock
			mat = block.getType
			if (mat==Material::WALL_SIGN||mat==Material::SIGN_POST)
				gate = get_gate block
				if gate!=nil
					gate.redstone_change event, event.getOldCurrent.to_f, event.getNewCurrent.to_f
				end
			end

		end
		registerEvent(Event::Type::PLAYER_INTERACT, Event::Priority::Monitor) do |event|
   			player = event.getPlayer
			if !(event.getAction==Action::RIGHT_CLICK_BLOCK || event.getAction==Action::LEFT_CLICK_BLOCK)
				return
			end
			block = event.getClickedBlock()
			if !(block.getType==Material::WALL_SIGN || block.getType==Material::SIGN_POST)
				return
			end
			gate = get_gate block
			if gate==nil
				return
			end
			if @player_status[player]==nil
				@player_status.store player, [false, 0]
			end
			if @player_status[player][0]	
				event.setCancelled true
				mode = @player_status[player][1]
				if mode == 0
					if gate.inputs=={}
						player.sendMessage("[Link] "+ChatColor::RED.toString+"Gate has no Input Values. Canceling...")
						return
					end
					@player_status[player][2] = gate
					@player_status[player][3] = 0
					clr = ChatColor::RED
					if(gate.inputs.values[0])
						clr = ChatColor::GREEN
					end
					gate.set_line(2, clr.toString+gate.inputs.keys[0])
					gate.set_line(3, clr.toString+gate.inputs.values[0].class.to_s)
					@player_status[player][1]=1
				elsif mode == 1
					if event.getAction==Action::RIGHT_CLICK_BLOCK
						sgate = @player_status[player][2]
						index = @player_status[player][3]+1
						if !sgate.inputs.values[index]
							index = 0
						end
						@player_status[player][3] = index
						clr = ChatColor::RED
						if(sgate.inputs.values[index])
							clr = ChatColor::GREEN
						end
						sgate.set_line(2, clr.toString+sgate.inputs.keys[index])
						sgate.set_line(3, clr.toString+sgate.inputs.values[index].class.to_s)
					elsif event.getAction==Action::LEFT_CLICK_BLOCK
						player.sendMessage("[LINK] "+ChatColor::GOLD.toString+"First Gate Selected! Select second now!")
						sgate = @player_status[player][2]
						sgate.set_line(2, "")
						sgate.set_line(3, "")
						sgate.update_display
						@player_status[player][1]=2
					end
				elsif mode == 2
					if gate.outputs=={}
						player.sendMessage("[LINK] "+ChatColor::RED.toString+"Gate has no Output Values. Canceling...")
						@player_status[player]=[true,0]
						return
					end
					index = 0
					@player_status[player][4]=gate
					@player_status[player][5]=index
					gate.set_line(2, gate.outputs.keys[index])
					gate.set_line(3, gate.outputs.values[index][0].class.to_s)
					@player_status[player][1]=3
				elsif mode == 3
					if event.getAction==Action::RIGHT_CLICK_BLOCK
						#TODO: Stop wrong data types from linking.
						sgate = @player_status[player][4]
						index = @player_status[player][5]+1
						if !sgate.outputs.values[index]
							index = 0
						end
						@player_status[player][5] = index
						sgate.set_line(2, gate.outputs.keys[index])
						sgate.set_line(3, gate.outputs.values[index][0].class.to_s)
					elsif event.getAction==Action::LEFT_CLICK_BLOCK
						player.sendMessage("[LINK] "+ChatColor::GREEN.toString+"Gates Linked!")
						gate1 = @player_status[player][2]
						index1 = @player_status[player][3]
						gate2 = @player_status[player][4]
						index2 = @player_status[player][5]
						key1 = gate1.inputs.keys[index1]
						key2 = gate2.outputs.keys[index2]
						#Unlink gates
						$gates.each do |a|
							a.outputs.each do |name, value|
								gates = value[1]
								gates.each do |gate_dat|
									b = gate_dat[0]
									if b!=nil
										if b==gate1&&gate_dat[1]==key1
											gates.delete(gate_dat)
										end
									end
								end
							end
						end
						old_val = gate1.inputs[key1]
						new_val = gate2.outputs.values[index2][0]
						gate1.inputs[key1]=new_val
						output_data = [gate1,key1]
						if !gate2.outputs[key2].include?(output_data)
							gate2.outputs[key2][1].push output_data
						end
						gate1.try_update key1, old_val, new_val 
						gate2.set_line(2, "")
						gate2.set_line(3, "")
						gate2.update_display
						@player_status[player]=[true,0]
						save_gates
					end

				end
			else
				gate.clicked event
			end
		end

		info "Enabled."
	end
	def onDisable
		$gates.each do |gate|
			gate.pause
		end
		save_gates
		info "Disabled."
	end
	def onCommand sender, cmd, label, args
		player = sender.getPlayer
		if @player_status[player]==nil
			@player_status.store player, [false, 0]
		end
		@player_status[player][0]=!@player_status[player][0]
		if @player_status[player][0]
			player.sendMessage("[LINK] "+ChatColor::GREEN.toString+"Edit mode enabled.")
		else
			@player_status.store player, [false, 0]
			player.sendMessage("[LINK] "+ChatColor::RED.toString+"Edit mode disabled.")
		end
		return true
	end
end



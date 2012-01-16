class Gate
	attr_accessor :name,:id,:perm,:block,:inputs,:outputs,:perms
	def initialize event
		@name = "BaseGate"
		@id = "[BaseGate]"
		@perms = "link.basic"
		@block = LinkBlock.new(event.block)
		@inputs = {}
		@outputs = {}
		setup event
		resume
		event.getPlayer.sendMessage("[LINK] "+ChatColor::GREEN.toString+"Creation Sucessful! "+name)
		event.setLine(0, ChatColor::AQUA.toString + @id)
	end
	def add_input name, default
		@inputs.store name, default
	end
	def add_output name, default
		@outputs.store name, [default,[]]
	end
	def get_input name
		input = @inputs[name]
		return input
	end
	def set_output name, val
		output = @outputs[name]
		if output[0]!=val
			old_val = output[0]
			output[0]=val
			output[1].each do |gate, index|
				gate.inputs[index]=val
				gate.try_update index, old_val, val
			end
		end
	end
	def get_output name
		@outputs[name][0]
	end
	def try_update input, old_val, new_val
		if old_val != new_val
			update input, old_val, new_val
			update_display
		end
	end
	def set_line line, text
		sign = CraftSign.new(@block.get_block)
		sign.setLine line, text
		sign.update
	end
	def destroy
		pause
		@inputs.each do |name, value, gate|
			gate = nil
		end
		@outputs.each do |name, value|
			gates = value[1]
			gates.each do |gate_dat|
				gate = gate_dat[0]
				if gate!=nil
					gate.inputs.each do | n, v, g|
						if g==self
							g=nil
						end
					end
				end
			end
			gate = nil
		end
		$gates.delete(self)
	end
	## Callback method stubs
	def setup event
		# Called when new gate is made.
	end
	def redstone_change event, old_val, new_val
		# Called when the redstone value of a gate is changed.
	end
	def resume
		# Called when the gate is made/loaded.
	end
	def pause
		# Called when the gate is unloaded/destroyed
	end
	def update input, old_val, new_val
		# Called an input is changed.
	end
	def update_display
		# Called when the display should be updated.
	end
	def clicked event
		# Called when something clicks the gate.
	end
end


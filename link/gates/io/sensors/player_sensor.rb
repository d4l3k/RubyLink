class PlayerSensor < Gate
	def setup event
		@name = "Player Sensor"
		@id = "[PlayrSensor]"
		add_output "Player", ""
		add_input "Update", 0.0
		add_input "Radius", 10.0
	end
	def update input, old_val, new_val
		if input=="Update"&&get_input("Update")>=1.0
			block = @block.get_block
			entities = block.getWorld.getPlayers.toArray
			out = ""
			dist = -1.0
			block_loc = block.getLocation
			entities.each do |ent|
				ent_loc = ent.getLocation
				r_dist = block_loc.distance(ent_loc)
				if r_dist<=get_input("Radius")
					if r_dist<dist||dist<0.0
						dist = r_dist
						out = ent.getName
					end
				end
			end
			set_output "Player", out
		end
	end
	def update_display
		
	end
end

add_type "[psensor]", PlayerSensor
add_type "[PlayerSensor]", PlayerSensor

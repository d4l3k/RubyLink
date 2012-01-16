class TeleportPlayer < Gate
	def setup event
		@name = "Teleport Player"
		@id = "[Teleport]"
		add_input "Player", ""
		add_input "Position", @block.get_pos
		add_input "Teleport", 0.0
	end
	def update input, old_val, new_val
		if input == "Teleport" && new_val>=1.0
			player_name = get_input "Player"
			if player_name==""
				return
			end
			begin
				player = $link.getServer.getPlayer(player_name)
				pos = get_input("Position")
				loc = @block.get_loc
				loc.setX pos.x
				loc.setY pos.y
				loc.setZ pos.z
				player.teleport(loc)
			rescue Exception=>e
			end
		end
	end
	def update_display
		
	end
end

add_type "[TP]", TeleportPlayer
add_type "[Teleport]", TeleportPlayer

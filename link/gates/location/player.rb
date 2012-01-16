class LocPlayer < Gate
	def setup event
		@name = "Player Position"
		@id = "[PlayerPos]"
		location = Position.new(0.0,0.0,0.0)
		location.set_block @block.get_block
		add_output "Position", location
		add_input "Player", event.getLine(1)
		update "Player","",event.getLine(1)
	end
	def update input, old_val, new_val
		begin
			player = $link.getServer.getPlayer(new_val)
			pos = player.getLocation
			location = Position.new(pos.getX,pos.getY,pos.getZ)
			set_output "Position", location
			set_line 1, player.getDisplayName
		rescue Exception=> e
			set_line 1, "No Player"
		end
	end
	def update_display
		
	end
end

add_type "[playerpos]", LocPlayer
add_type "[ppos]", LocPlayer

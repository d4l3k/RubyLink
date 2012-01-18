class GlobalMsg < Gate
	def setup event
		@name = "Global Message"
		@id = "[GlobalMsg]"
		@perms = "danger"
		add_input "Message", ""
		add_input "Send", 0.0
	end
	def update input, old_val, new_val
		if input=="Send"&&new_val>=1.0
			$link.getServer.broadcastMessage("[LinkGate][Global] "+ChatColor::GOLD.toString+get_input("Message"))
		end
	end
	def update_display
		
	end
end

add_desc GlobalMsg, "Send a message to everyone on the server."
add_type "[GMsg]", GlobalMsg
add_type "[GlobalMsg]", GlobalMsg
add_type "[gsay]", GlobalMsg

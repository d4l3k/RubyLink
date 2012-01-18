class PlayerMsg < Gate
	def setup event
		@name = "Player Message"
		@id = "[PlayerMsg]"
		add_input "Message", ""
		add_input "Player", ""
		add_input "Send", 0.0
	end
	def update input, old_val, new_val
		if input=="Send"&&new_val>=1.0
			player_name = get_input("Player")
			if player_name!=""
				player = $link.getServer.getPlayer(player_name)
				if player
					player.sendMessage("[LinkGate][Private] "+ChatColor::GOLD.toString+get_input("Message"))
				end
			end
		end
	end
	def update_display
		
	end
end

add_desc PlayerMsg, "Send a message to a player."
add_type "[pMsg]", PlayerMsg
add_type "[psay]", PlayerMsg
add_type "[PlayerMsg]", PlayerMsg

class LinkCommand < Gate
	def setup event
		@name = "Command Sender"
		@id = "[Command]"
		@perms = "restricted"
		add_input "Command", ""
		add_input "Run", 0.0
	end
	def update input, old_val, new_val
		if input=="Run"&&new_val>=1.0
			    serv = $link.getServer()
			    cmd = get_input "Command"
			    $link.info("Ran command: #{cmd}")
    			serv.dispatchCommand(serv.getConsoleSender(), cmd);
		end
	end
	def update_display
	end
end

add_desc GlobalMsg, "Runs a console command."
add_type "[command]", LinkCommand
add_type "[cmd]", LinkCommand

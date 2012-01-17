class RedstoneOut < Gate
	def setup event
		@name = "Redstone Power Output"
		@id = "[RedstoneOut]"
		add_input "Power", 0.0
		begin
			@block.get_block.setPowered false
		rescue Exception=>e
			return false
		end
	end
	def redstone_change event, old_val, new_val
	end
	def update input, old_val, new_val
		if new_val>=1.0
			@block.get_block.setPowered true
		end
	end
	def update_display
		set_line 1, get_output("Power").to_s
	end
end

add_desc RedstoneOut, "Outputs redstone power from an input. Powered if Power>1.0. Requires Spout!"
add_type "[RedstoneOut]", RedstoneOut
add_type "[rout]", RedstoneOut

class RedstoneIn < Gate
	def setup event
		@name = "Redstone Power Input"
		@id = "[RedstoneIn]"
		add_output "Power", 0.0
	end
	def redstone_change event, old_val, new_val
		set_output "Power", new_val
		update_display
	end
	def update input, old_val, new_val
	end
	def update_display
		set_line 1, get_output("Power").to_s
	end
end

add_type "[RedstoneIn]", RedstoneIn
add_type "[rin]", RedstoneIn

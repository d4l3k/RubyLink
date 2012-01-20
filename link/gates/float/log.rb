class FloatLog < Gate
	def setup event
		@name = "Float: Log"
		@id = "[F.Log]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", Math::log(new_val)
	end
	def update_display
		
	end
end

add_desc FloatLog, "Returns the logarithm of `A` with base e."
add_type "[F.Log]", FloatLog

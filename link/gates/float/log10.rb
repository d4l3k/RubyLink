class FloatLog10 < Gate
	def setup event
		@name = "Float: Log 10"
		@id = "[F.Log10]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", Math::log(new_val, 10)
	end
	def update_display
		
	end
end

add_desc FloatLog10, "Returns the logarithm of `A` with base 10."
add_type "[F.Log10]", FloatLog10

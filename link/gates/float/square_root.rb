class FloatSquareRoot < Gate
	def setup event
		@name = "Float: Square Root"
		@id = "[F.Sqrt]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", Math::sqrt(new_val)
	end
	def update_display
		
	end
end

add_desc FloatSquareRoot, "Returns the square root of `A`."
add_type "[F.Sqrt]", FloatSquareRoot

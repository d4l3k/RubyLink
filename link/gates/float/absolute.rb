class FloatAbsolute < Gate
	def setup event
		@name = "Float: Absolute"
		@id = "[F.Absolute]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").abs
	end
	def update_display
		
	end
end

add_desc FloatAbsolute, "Returns the absolute value of A."
add_type "[F.Absolute]", FloatAbsolute

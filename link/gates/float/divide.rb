class FloatDivide < Gate
	def setup event
		@name = "Float: Divide"
		@id = "[F.Divide]"
		add_output "Out", 1.0
		add_input "A", 1.0
		add_input "B", 1.0
		add_input "C", 1.0
		add_input "D", 1.0
		add_input "E", 1.0
		add_input "F", 1.0
		add_input "G", 1.0
		add_input "H", 1.0
	end
	def update input, old_val, new_val
		data = get_input "A"
		data /= get_input "B"
		data /= get_input "C"
		data /= get_input "D"
		data /= get_input "E"
		data /= get_input "F"
		data /= get_input "G"
		data /= get_input "H"
		set_output "Out", data
	end
	def update_display
		
	end
end

add_desc FloatDivide, "Divides A by B-H."
add_type "[F.Divide]", FloatDivide

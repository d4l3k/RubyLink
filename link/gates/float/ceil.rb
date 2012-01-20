class FloatCeil < Gate
	def setup event
		@name = "Float: Ceiling"
		@id = "[F.Ceiling]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").ceil.to_f
	end
	def update_display
		
	end
end

add_desc FloatCeil, "Rounds A to the nearest integer upwards."
add_type "[F.Ceiling]", FloatCeil
add_type "[F.Ceil]", FloatCeil

class FloatFloor < Gate
	def setup event
		@name = "Float: Floor"
		@id = "[F.Floor]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").floor.to_f
	end
	def update_display
		
	end
end

add_desc FloatFloor, "Rounds A to the nearest integer downward."
add_type "[F.Floor]", FloatFloor

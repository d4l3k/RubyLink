class FloatExponentialPowers < Gate
	def setup event
		@name = "Float: Exponential Powers"
		@id = "[F.Power]"
		add_output "Out", 0.0
		add_input "A", 0.0
		add_input "B", 1.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A")**get_input("B")
	end
	def update_display
		
	end
end

add_desc FloatExponentialPowers, "Raises `A` to the `b` power."
add_type "[F.Power]", FloatExponentialPowers

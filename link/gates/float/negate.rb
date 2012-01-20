class FloatNegate < Gate
	def setup event
		@name = "Float: Negate"
		@id = "[F.Negate]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", -new_val
	end
	def update_display
		
	end
end

add_desc FloatNegate, "Returns the negated version of `A`. Ex: `1 <=> -1`."
add_type "[F.Negate]", FloatNegate

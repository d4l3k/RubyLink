class FloatSign < Gate
	def setup event
		@name = "Float: Sign"
		@id = "[F.Sign]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", new_val!=0.0? (new_val/(new_val.abs)) : 0.0
	end
	def update_display
		
	end
end

add_desc FloatSign, "Returns -1 when `A` is less than 0. Returns 0 when `A` is equal to 0. Returns 1 when `A` is greater than 0."
add_type "[F.Sign]", FloatSign

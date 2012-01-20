class FloatIncrement < Gate
	def setup event
		@name = "Float: Increment/Decrement"
		@id = "[F.Increment]"
		add_output "Out", 0.0
		add_input "A", 0.0
		add_input "Increment", 0.0
		add_input "Decrement", 0.0
		add_input "Reset", 0.0
	end
	def update input, old_val, new_val
		if input=="Increment"
			set_output "Out", get_output("Out")+new_val
		elsif input=="Decrement"
			set_output "Out", get_output("Out")-new_val
		elsif input=="Reset"
			set_output "Out", 0.0
		end
	end
	def update_display
		
	end
end

add_desc FloatIncrement, "Adds `A` to `Out` when `Increment` is greater than `0.0`, subtracts when `Decrement` is greater than `0.0`"
add_type "[F.Increment]", FloatIncrement

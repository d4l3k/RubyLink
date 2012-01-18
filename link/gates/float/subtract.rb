class MinusFloat < Gate
	def setup event
		@name = "Minus Float"
		@id = "[MinusFloat]"
		add_output "Product", 0.0
		add_input "Number1", 0.0
		add_input "Number2", 0.0
		add_input "Number3", 0.0
		add_input "Number4", 0.0
	end
	def update input, old_val, new_val
		data = get_input "Number1"
		data -= get_input "Number2"
		data -= get_input "Number3"
		data -= get_input "Number4"
		set_output "Product", data
		set_line 1, data.to_s
	end
	def update_display
		
	end
end

add_type "[-]", MinusFloat
add_type "[Minus]", MinusFloat
add_type "[MinusFloat]", MinusFloat
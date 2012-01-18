class MultiplyFloat < Gate
	def setup event
		@name = "Multiply Float"
		@id = "[Multiply]"
		add_output "Product", 1.0
		add_input "Number1", 1.0
		add_input "Number2", 1.0
		add_input "Number3", 1.0
		add_input "Number4", 1.0
	end
	def update input, old_val, new_val
		data = get_input "Number1"
		data *= get_input "Number2"
		data *= get_input "Number3"
		data *= get_input "Number4"
		set_output "Product", data
		set_line 1, data.to_s
	end
	def update_display
		
	end
end

add_type "[*]", MultiplyFloat
add_type "[Multiply]", MultiplyFloat

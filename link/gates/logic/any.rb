class Any < Gate
	def setup event
		@name = "Any"
		@id = "[Any]"
		add_output "True", 0.0
		add_input "Number1", 0.0
		add_input "Number2", 0.0
		add_input "Number3", 0.0
		add_input "Number4", 0.0
	end
	def update input, old_val, new_val
		data = 0.0
		if get_input( "Number1")>=1.0 || get_input( "Number2")>=1.0 || get_input( "Number3")>=1.0 || get_input( "Number4")>=1.0
			data = 1.0
		end
		set_output "True", data
		set_line 1, data.to_s
	end
	def update_display
		
	end
end

add_type "[||]", Any
add_type "[Any]", Any

class GreaterEquals < Gate
	def setup event
		@name = "Greater Than or Equals To"
		@id = "[>=]"
		add_output "True", 1.0
		add_input "Number1", 0.0
		add_input "Number2", 0.0
	end
	def update input, old_val, new_val
		data = 0.0
		if get_input( "Number1") >= get_input( "Number2")
			data = 1.0
		end
		set_output "True", data
		set_line 1, data.to_s
	end
	def update_display
		
	end
end

add_type "[>=]", GreaterEquals
add_type "[GreatEqual]", GreaterEquals

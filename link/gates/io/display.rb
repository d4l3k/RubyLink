class Display < Gate
	def setup event
		@name = "Static Display"
		@id = "[Display]"
		val = event.getLine(1)+event.getLine(2)+event.getLine(3)
		begin
			val = Integer(val)
		rescue Exception=>e
		end
		add_input "Value", ""
		add_input "Value2", 0.0
	end
	def update input, old_val, new_val
		update_display
	end
	def update_display
		set_line 1, get_input("Value")
		set_line 2, get_input("Value2").to_s
	end
end

add_type "[Display]", Display
add_type "[D]", Display

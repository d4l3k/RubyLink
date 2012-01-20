class StringRepeat < Gate
	def setup event
		@name = "String: Repeat"
		@id = "[S.Repeat]"
		add_output "Out", ""
		add_input "A", ""
		add_input "Times", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A")*get_input("Times")
	end
	def update_display
	end
end

add_desc StringRepeat, "Repeats string(A) float(Times) times."
add_type "[S.Repeat]", StringRepeat

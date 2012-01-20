class StringReverse < Gate
	def setup event
		@name = "String: Reverse"
		@id = "[S.Reverse]"
		add_output "Out", ""
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").reverse
	end
	def update_display
	end
end

add_desc StringReverse, "Reverses A."
add_type "[S.Reverse]", StringReverse

class StringIndex < Gate
	def setup event
		@name = "String: Index"
		@id = "[S.Index]"
		add_output "Out", ""
		add_input "A", ""
		add_input "Index", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A")[get_input("Index")]
	end
	def update_display
	end
end

add_desc StringIndex, "Returns the letter of Index in a string (A)."
add_type "[S.Index]", StringIndex

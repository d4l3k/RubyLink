class StringLength < Gate
	def setup event
		@name = "String: Length"
		@id = "[S.Length]"
		add_output "Out", 0.0
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").length.to_f
	end
	def update_display
	end
end

add_desc StringLength, "Returns the length of A."
add_type "[S.Length]", StringLength

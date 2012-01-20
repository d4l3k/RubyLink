class StringTrim < Gate
	def setup event
		@name = "String: Trim"
		@id = "[S.Trim]"
		add_output "Out", ""
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").strip
	end
	def update_display
	end
end

add_desc StringTrim, "Trims the leading and trailing whitespace from A."
add_type "[S.Trim]", StringTrim

class StringLowercase < Gate
	def setup event
		@name = "String: Lowercase"
		@id = "[S.Lowercase]"
		add_output "Out", ""
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").downcase
	end
	def update_display
	end
end

add_desc StringLowercase, "Returns the lowercase version of A."
add_type "[S.Lowercase]", StringLowercase
add_type "[S.Lower]", StringLowercase

class StringUppercase < Gate
	def setup event
		@name = "String: Uppercase"
		@id = "[S.Uppercase]"
		add_output "Out", ""
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").upcase
	end
	def update_display
	end
end

add_desc StringUppercase, "Returns the uppercase version of A."
add_type "[S.Uppercase]", StringUppercase
add_type "[S.Upper]", StringUppercase

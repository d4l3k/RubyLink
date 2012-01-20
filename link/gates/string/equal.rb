class StringEqual < Gate
	def setup event
		@name = "String: Equal"
		@id = "[S.Equal]"
		add_output "Out", 0.0
		add_input "A", ""
		add_input "B", ""
	end
	def update input, old_val, new_val
		data = get_input("A")==get_input("B") ? 1.0 : 0.0
		set_output "Out", data
		set_line 1, data.to_s
	end
	def update_display
		
	end
end

add_desc StringEqual, "Returns 1.0 if A equals B."
add_type "[S.Equal]", StringEqual

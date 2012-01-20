class StringToAscii < Gate
	def setup event
		@name = "String: To Ascii"
		@id = "[S.ToAscii]"
		add_output "Out", 0.0
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").unpack("C")[0]
	end
	def update_display
	end
end

add_desc StringToAscii, "Converts A to the ASCII representation of it."
add_type "[S.Ascii]", StringToAscii
add_type "[S.ToAscii]", StringToAscii

class StringConcat < Gate
	def setup event
		@name = "String: Concatenate"
		@id = "[S.Concat]"
		add_output "Out", ""
		add_input "A", ""
		add_input "B", ""
		add_input "C", ""
		add_input "D", ""
		add_input "E", ""
		add_input "F", ""
		add_input "G", ""
		add_input "H", ""
				
	end
	def update input, old_val, new_val
		data = get_input "A"
		data += get_input "B"
		data += get_input "C"
		data += get_input "D"
		data += get_input "E"
		data += get_input "F"
		data += get_input "G"
		data += get_input "H"
		set_output "Out", data
		set_line 1, data.to_s
	end
	def update_display
		
	end
end

add_desc StringConcat, "Combines two strings."
add_type "[S.Concat]", StringConcat
add_type "[S.Concatenate]", StringConcat

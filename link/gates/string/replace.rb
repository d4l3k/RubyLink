class StringReplace < Gate
	def setup event
		@name = "String: Replace"
		@id = "[S.Replace]"
		add_output "Out", ""
		add_input "A", ""
		add_input "Item", ""
		add_input "Replacement",""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").gsub(get_input("Item"),get_input("Replacement"))
	end
	def update_display
	end
end

add_desc StringReplace, "Replaces all occurences of `Item` with `Replacement` in `A`."
add_type "[S.Replace]", StringReplace

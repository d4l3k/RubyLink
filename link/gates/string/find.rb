class StringFind < Gate
	def setup event
		@name = "String: Find"
		@id = "[S.Find]"
		add_output "Index", 0.0
		add_input "A", ""
		add_input "Search", ""
		add_input "StartIndex", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").index(get_input("B"), get_input("StartIndex").to_i)
	end
	def update_display
	end
end

add_desc StringFind, "Searches for string (A) for (B) and returns the first index found. Find ignores everything before StartIndex."
add_type "[S.Find]", StringFind

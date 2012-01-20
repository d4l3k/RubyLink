class StringSubstring < Gate
	def setup event
		@name = "String: Substring"
		@id = "[S.SubStr]"
		add_output "Out", ""
		add_input "A", ""
		add_input "Start", 0.0
		add_input "End", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A")[get_input("Start")..get_input("End")]
	end
	def update_display
	end
end

add_desc StringSubstring, "Returns a substring of A."
add_type "[S.Substring]", StringSubstring

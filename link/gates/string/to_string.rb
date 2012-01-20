class StringToFloat < Gate
	def setup event
		@name = "String: To Float"
		@id = "[S.ToFloat]"
		add_output "Out", 0.0
		add_input "A", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").to_f
	end
	def update_display
	end
end

add_desc StringToFloat, "Returns A in float version."
add_type "[S.Float]", StringToFloat
add_type "[S.ToFloat]", StringToFloat

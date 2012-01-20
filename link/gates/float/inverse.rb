class FloatInverse < Gate
	def setup event
		@name = "Float: Inverse"
		@id = "[F.Inverse]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", 1.0/get_input("A")
	end
	def update_display
		
	end
end

add_desc FloatInverse, "Returns `1.0/A`."
add_type "[F.Floor]", FloatInverse

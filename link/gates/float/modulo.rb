class FloatModulo < Gate
	def setup event
		@name = "Float: Modulo"
		@id = "[F.Modulo]"
		add_output "Out", 0.0
		add_input "A", 0.0
		add_input "B", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").modulo(get_input("B"))
	end
	def update_display
		
	end
end

add_desc FloatModulo, "Returns the remainder of `A` divided by `B`."
add_type "[F.Modulo]", FloatModulo

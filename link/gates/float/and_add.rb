class FloatAndAdd < Gate
	def setup event
		@name = "Float: And / Add"
		@id = "[F.And/Add]"
		add_output "Out", 0.0
		add_input "A", 0.0
		add_input "B", 0.0
	end
	def update input, old_val, new_val
		val1 = get_input("A")
		val2 = get_input("B")
		set_output "Out", (val1!=0.0&&val2!=0.0) ? (val1+val2) : 0.0
	end
	def update_display
		
	end
end

add_desc FloatAndAdd, "Returns the sum of `A` & `B` when they are not equal to `0.0`."
add_type "[F.And/Add]", FloatAndAdd

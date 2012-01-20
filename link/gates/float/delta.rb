class FloatDelta < Gate
	def setup event
		@name = "Float: Delta"
		@id = "[F.Delta]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", (new_val-old_val)
	end
	def update_display
		
	end
end

add_desc FloatDelta, "Returns the change between a new value of A and the old one."
add_type "[F.Delta]", FloatDelta

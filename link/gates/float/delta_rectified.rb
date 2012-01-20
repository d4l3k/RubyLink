class FloatDeltaRectified < Gate
	def setup event
		@name = "Float: Delta (Rectified)"
		@id = "[F.DeltaR]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", (new_val-old_val).modulo(180)
	end
	def update_display
		
	end
end

add_desc FloatDeltaRectified, "Returns the change between a new value of A and the old one. Modulo is applied to the output to prevent it from giving values outside the -180 to 180 range."
add_type "[F.DeltaR]", FloatDeltaRectified

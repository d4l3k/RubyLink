class FloatPi < Gate
	def setup event
		@name = "Float: Pi"
		@id = "[F.Pi]"
		add_output "Out", Math::PI
	end
	def update input, old_val, new_val
	end
	def update_display
		
	end
end

add_desc FloatPi, "Returns Pi."
add_type "[F.Pi]", FloatPi

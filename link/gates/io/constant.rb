class ConstantValue < Gate
	def setup event
		@name = "Constant Value"
		@id = "[Constant]"
		val = event.getLine(1)+event.getLine(2)+event.getLine(3)
		begin
			val = Float(val)
		rescue Exception=>e
		end
		add_output "Value", val
	end
	def update input, old_val, new_val
	end
	def update_display
	end
end

add_type "[Constant]", ConstantValue
add_type "[Value]", ConstantValue
add_type "[C]", ConstantValue

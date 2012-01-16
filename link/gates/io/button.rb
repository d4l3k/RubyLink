class Button < Gate
	def setup event
		@name = "Button"
		@id = "[Button]"
		@high = 1.0
		@low = 0.0
		@up = false
		tog = (event.getLine(1)+event.getLine(2)+event.getLine(3)).split(',')
		begin
			 @high = Float(tog[0])
		rescue Exception => e
		end
		begin
			 @low = Float(tog[1])
		rescue Exception => e
		end
		add_output "Value", @up ? @high : @low
		event.setLine 1, @high.to_s
	end
	def clicked event
		set_output "Value", @high
		set_output "Value", @low
		update_display
	end
	def update input, old_val, new_val
	end
	def update_display
	end
end

add_desc Button, "Goes to the high value then the low value. Can use sign arguments. Line 2: <high value>[,<low value>]"
add_type "[Button]", Button
add_type "[But]", Button
add_type "[B]", Button

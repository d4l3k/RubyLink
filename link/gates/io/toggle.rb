class ToggleNum < Gate
	def setup event
		@name = "Toggle Number"
		@id = "[ToggleNum]"
		@index = 0
		@togs = []
		(event.getLine(1)+event.getLine(2)+event.getLine(3)).split(',').each do |tog|
			begin
				 @togs.push Float(tog)
			rescue Exception => e
			end
		end
		if @togs.length==0
			@togs.push 0.0
		end
		add_output "Value", @togs[@index]
	end
	def clicked event
		@index = @index + 1
		if !@togs[@index]
			@index = 0
		end
		set_output "Value", @togs[@index]
		update_display
	end
	def update input, old_val, new_val
	end
	def update_display
		set_line 1, @togs[@index].to_s
	end
end

add_type "[tog]", ToggleNum
add_type "[Toggle]", ToggleNum
add_type "[ToggleNum]", ToggleNum

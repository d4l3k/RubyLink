class AddPos < Gate
	def setup event
		@name = "Add to Position"
		@id = "[AddPos]"
		location = Position.new(0.0,0.0,0.0)
		add_input "X", 0.0
		add_input "Y", 0.0
		add_input "Z", 0.0
		add_output "Position", location
		add_input "Position", location
	end
	def update input, old_val, new_val
		location = get_input("Position").clone
		location.x+= get_input "X"
		location.y+= get_input "Y"
		location.z+= get_input "Z"
		set_output "Position", location
		update_display
	end
	def update_display
		location = get_output "Position"
		set_line 1,"X: "+location.x.to_s
		set_line 2,"Y: "+location.y.to_s
		set_line 3,"Z: "+location.z.to_s
	end
end

add_type "[AddPos]", AddPos
add_type "[apos]", AddPos

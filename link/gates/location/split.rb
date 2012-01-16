class LocSplit < Gate
	def setup event
		@name = "Split Position"
		@id = "[SplitPos]"
		location = Position.new(0.0,0.0,0.0)
		add_output "X", 0.0
		add_output "Y", 0.0
		add_output "Z", 0.0
		add_input "Position", location
	end
	def update input, old_val, new_val
		set_output "X", new_val.x
		set_output "Y", new_val.y
		set_output "Z", new_val.z
		update_display
	end
	def update_display
		location = get_input "Position"
		set_line 1,"X: "+location.x.to_s
		set_line 2,"Y: "+location.y.to_s
		set_line 3,"Z: "+location.z.to_s
	end
end

add_type "[splitpos]", LocSplit
add_type "[spos]", LocSplit

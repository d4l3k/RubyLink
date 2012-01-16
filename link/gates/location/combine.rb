class LocMake < Gate
	def setup event
		@name = "Make Position"
		@id = "[MakePos]"
		location = Position.new(0.0,0.0,0.0)
		add_input "X", 0.0
		add_input "Y", 0.0
		add_input "Z", 0.0
		add_output "Position", location
	end
	def update input, old_val, new_val
		set_output "Position", Position.new(get_input("X"), get_input( "Y"), get_input( "Z"))
	end
	def update_display
		set_line 1,"X: "+get_input("X").to_s
		set_line 2,"Y: "+get_input("Y").to_s
		set_line 3,"Z: "+get_input("Z").to_s	
	end
end

add_desc LocMake, "Makes a position out of three float values. (X, Y, Z)"
add_type "[makepos]", LocMake
add_type "[mpos]", LocMake

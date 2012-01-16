class GPS < Gate
	def setup event
		@name = "GPS"
		@id = "[GPS]"
		location = Position.new(0.0,0.0,0.0)
		location.set_block @block.get_block
		location.x+=0.5
		location.y+=0.5
		location.z+=0.5
		add_output "Position", location
		event.setLine 1,"X: "+location.x.to_s
		event.setLine 2,"Y: "+location.y.to_s
		event.setLine 3,"Z: "+location.z.to_s				
	end
	def update input, old_val, new_val
	end
	def update_display
		location = Position.new(0.0,0.0,0.0)
		location.set_block @block.get_block
		location.x+=0.5
		location.y+=0.5
		location.z+=0.5
		set_line 1,"X: "+location.x.to_s
		set_line 2,"Y: "+location.y.to_s
		set_line 3,"Z: "+location.z.to_s	
	end
end

add_type "[GPS]", GPS
add_type "[Location]", GPS

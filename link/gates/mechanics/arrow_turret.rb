class FireArrow < Gate
	def setup event
		@name = "Arrow Turret"
		@id = "[Turret]"
		add_input "Target", @block.get_pos
		add_input "Launch", 0.0
		add_input "Speed", 1.2
		add_input "Number", 1.0
		add_input "Fire?", 0.0
		add_input "Bounce?", 0.0
		add_input "Spread", 6.0
	end
	def update input, old_val, new_val
		if input == "Launch" && new_val>=1.0
			bloc = @block.get_block.getLocation
			tar = get_input("Target")
			loc = Location.new(bloc.getWorld, tar.x, tar.y, tar.z)
			offset = loc.toVector.subtract(bloc.toVector)
			vel = offset.normalize
			speed = get_input "Speed"
			spread = get_input "Spread"
			fire = get_input "Fire?"
			bounce = get_input "Bounce?"
			get_input("Number").to_i.times do
				arrow = @block.get_block.getWorld.spawnArrow(bloc.add(0.5, 0.5, 0.5), vel, speed, spread)
				if fire>=1.0
					arrow.setFireTicks(10000)
				else
					arrow.setFireTicks(1)
				end
				if bounce>=1.0
					arrow.setBounce(true)
				end
			end
		end
	end
	def update_display
		
	end
end

add_desc FireArrow, "Fires arrows at a position."
add_type "[arrow]", FireArrow
add_type "[turret]", FireArrow

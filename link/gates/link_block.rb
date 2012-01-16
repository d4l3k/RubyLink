class LinkBlock
	def initialize block
		@world = block.getWorld.getName
		@x = block.getLocation.getX
		@y = block.getLocation.getY
		@z = block.getLocation.getZ
	end
	def get_loc
		return get_block.getLocation
	end
	def get_pos
		pos = Position.new(@x,@y,@z)
		return pos
	end
	def get_block
		return $link.getServer.getWorld(@world).getBlockAt(@x, @y, @z)
	end
end


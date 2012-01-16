class Position
	attr_accessor :x, :y, :z
	def initialize x, y, z
		@x = x
		@y = y
		@z = z
	end
	def set_block block
		@x = block.getLocation.getX
		@y = block.getLocation.getY
		@z = block.getLocation.getZ
	end
	def to_s
		return "[#{@x},#{@y},#{@z}]"
	end
end

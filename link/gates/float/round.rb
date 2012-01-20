class FloatRound < Gate
	def setup event
		@name = "Float: Round"
		@id = "[F.Round]"
		add_output "Out", 0.0
		add_input "A", 0.0
	end
	def update input, old_val, new_val
		set_output "Out", new_val.round.to_f
	end
	def update_display
		
	end
end

add_desc FloatRound, "Returns `A` rounded to the nearest integer."
add_type "[F.Round]", FloatRound

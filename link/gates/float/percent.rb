class FloatPercent < Gate
	def setup event
		@name = "Float: Percent"
		@id = "[F.Percent]"
		add_output "Out", 0.0
		add_input "A", 0.0
		add_input "Max", 1.0
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A")/get_input("Max")*100.0
	end
	def update_display
		
	end
end

add_desc FloatPercent, "Returns `A` divided by `Max` multiplied by 100."
add_type "[F.Percent]", FloatPercent

class Delay < Gate
	def setup event
		@name = "Signal Delay"
		@id = "[Delay]"
		add_output "Value", 0.0
		add_input "Value", 0.0
		add_input "Delay", 10.0
		event.setLine 2, "Ticks: "+get_input("Delay").to_i.to_s
	end
	def update input, old_val, new_val
		$link.scheduleSyncDelayedTask(get_input("Delay").to_i) do
			set_output "Value", new_val
		end
		update_display
	end
	def update_display
		set_line 1, get_input("Value").to_s
		set_line 2, "Ticks: "+get_input("Delay").to_i.to_s
	end
end
add_desc Delay, "Delays a float signal for a specified number of ingame ticks."
add_type "[delay]", Delay

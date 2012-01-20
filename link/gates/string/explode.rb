class StringExplode < Gate
	def setup event
		@name = "String: Equal"
		@id = "[S.Equal]"
		add_output "Out", []
		add_input "A", ""
		add_input "Seperator", ""
	end
	def update input, old_val, new_val
		set_output "Out", get_input("A").split(get_input("Seperator"))
	end
	def update_display
		
	end
end

add_desc StringExplode, "Breaks up a string(A) via the seperator into an array."
add_type "[S.Explode]", StringExplode

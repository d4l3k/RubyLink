begin
	import 'org.getspout.spoutapi.block.SpoutBlock'
rescue Exception=>e
	$link.info "Spout not found! Spout is required for some things."
end

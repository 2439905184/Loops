extends Label

func _process(delta):
	var memory = OS.get_dynamic_memory_usage()
	self.text = "Memory:" + str(memory)
	pass

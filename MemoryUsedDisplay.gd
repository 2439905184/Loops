extends Label

func _process(delta):
	var memory = OS.get_dynamic_memory_usage()
	self.text = "Memory:" + str(memory/1000/1000) + "MB"
	pass

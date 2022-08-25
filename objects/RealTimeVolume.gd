extends Label

func _process(delta):
	var volume = AudioServer.get_bus_volume_db(0)
	self.text = "实时音量:" + str(volume) + "dbfs"
	#print_debug(volume)
	pass

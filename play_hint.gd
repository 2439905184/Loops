extends ColorRect

onready var normal_color = Color(0.235294, 0.231373, 0.231373)
onready var play_color = Color(0.407843, 1, 0)

func _on_sync(play:bool):
	if play:
		self.color = play_color
	else:
		self.color = normal_color
	pass

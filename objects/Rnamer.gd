extends Panel

signal change_instrument_name

func _ready():
	$hbox/ok.connect("pressed", self, "_on_ok")
	$hbox/cancel.connect("pressed", self, "hide_self")
	pass
	
func _on_rename_pressed():
	self.show()
	pass

func _on_ok():
	$"../JiJIa/Synth".text = $renameEdit.get_text()
	hide_self()
	pass

func _input(event):
	if event.as_text() == "Enter":
		_on_ok()
	elif event.as_text() == "Escape":
		hide_self()

func hide_self():
	self.hide()
	pass

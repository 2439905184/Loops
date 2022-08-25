extends Node2D

onready var panValue = $Panel/panValue
onready var volumeValue = $Panel/volumeValue

func _on_pan_value_changed(value):
	panValue.text = str(value) + "%"
	pass

func _on_volume_value_changed(value):
	volumeValue.text = str(value) + "%"
	pass

# 最小化 最大化 关闭窗口
func _on_minWindow_pressed():
	# todo
	pass


func _on_maxWindow_pressed():
	# todo
	pass

func _on_closeWindow_pressed():
	self.hide()
	pass

func _on_ViewHun_toggled(button_pressed):
	self.visible = button_pressed
	pass

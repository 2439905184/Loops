extends HBoxContainer

func _on_2_pressed():
	clear()
	for button in get_children():
		if button.get_index() %2 == 0:
			button.pressed = true
	pass

func _on_4_pressed():
	clear()
	for button in get_children():
		if button.get_index() %4 == 0:
			button.pressed = true
	pass

func _on_8_pressed():
	clear()
	for button in get_children():
		if button.get_index() %8 == 0:
			button.pressed = true
	pass

func clear():
	for button in get_children():
		button.pressed = false
	pass

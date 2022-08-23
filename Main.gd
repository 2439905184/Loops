extends Node2D

var play = false
var kick_paizi = [0,0,0,0 ,0,0,0,0 ,0,0,0,0 ,0,0,0,0] #16拍一个小节

func _ready():
	var bpm = 130
	var per_pai = 0.46 #一拍多少秒
	#print_debug(per_pai)
	print_debug(kick_paizi)
	
	for node in $JiJIa/kick.get_children():
		node.connect("toggled",self,"_on_kick_toggled",[node.get_index()])
	pass
	
#更新拍子
func _on_kick_toggled(butto_pressed:bool, button_index:int):
	if butto_pressed:
		kick_paizi[button_index] = 1
	else:
		kick_paizi[button_index] = 0
	print_debug("拍子更新",kick_paizi)
	pass
	
func _on_Play_pressed():
	play = true

	for i in kick_paizi:
		if i == 1:
			$Timer.start()
	
	print_debug(kick_paizi)
	pass


func _on_Timer_timeout():
	
	$Kick.play()
	
	pass 

func _on_clear_pressed():
	for node in $JiJIa/kick.get_children():
		node.pressed = false
	pass

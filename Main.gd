extends Node2D

var play = false
var kick_paizi = [0,0,0,0 ,0,0,0,0 ,0,0,0,0 ,0,0,0,0] # 16拍一个小节
var cur_kick = 0
signal sync_play_ui

func _ready():
	var bpm = 130
	var per_pai = 0.146 # 一拍多少秒
	#print_debug(per_pai)
	print_debug(kick_paizi)
	connect("sync_play_ui",$JiJIa/Container,"_on_sync")
	$Timer.wait_time = per_pai
	
	for node in $JiJIa/kick.get_children():
		node.connect("toggled", self, "_on_kick_toggled", [node.get_index()])
	pass
	
# 更新拍子
func _on_kick_toggled(butto_pressed: bool, button_index: int):
	if butto_pressed:
		kick_paizi[button_index] = 1
	else:
		kick_paizi[button_index] = 0
	print_debug("拍子更新", kick_paizi)
	pass
	
func _on_Play_pressed():
	play = true

	#for i in kick_paizi:
		#if i == 1:
		#$Timer.start()
		
	$Timer.start() # 末尾再来一个
	
	print_debug(kick_paizi)
	pass

func _on_Stop_pressed():
	play = false
	cur_kick = 0
	
	#for i in kick_paizi:
		#if i == 1:
		#$Timer.stop()
		
	$Timer.stop()
			
	print_debug(kick_paizi, "stoped.")
	pass 

func _on_Timer_timeout():
	var next_kick = 0
	if (cur_kick + 1) > 15:
		next_kick = 0
	else:
		next_kick = cur_kick + 1
	
	print_debug(cur_kick)
	if kick_paizi[cur_kick] == 1:
		$Kick.play()
		emit_signal("sync_play_ui",true)
	elif kick_paizi[cur_kick] == 0:
		emit_signal("sync_play_ui",false)
	cur_kick = next_kick
	
	pass 

func _on_clear_pressed():
	for node in $JiJIa/kick.get_children():
		node.pressed = false
	pass


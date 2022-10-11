extends Node

var hud = load("res://juego5/scenes/HUD.tscn")
var scene_pause = load("res://menu_pause.tscn")
var pause=false
var scene_win = load("res://juego5/scenes/menu_end.tscn")
var win_player=""
var time=5
func _ready():
	get_tree().paused=true
	pass # Replace with function body.

func _on_salir_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_a_win_player2_area_entered(area):
	print("hola")
	_win("2")
	
func _win(player):
	get_node("tsb_player1").queue_free()
	get_node("tsb_player2").queue_free()
	_create_hud()
	var label=$"menu_end/vv/HBoxContainer/lbl_info2"
#	print($"menu_end/vv".get_children())
	label.text=player
	
func _create_hud():
	var hud_instance= scene_win.instance()
	add_child(hud_instance)
	
func _on_a_win_player1_area_entered(area):
	print("hola")
	_win("1")
	
func _on_btn_pause_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
		
func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego5/worldG5.tscn")


func _on_Timer_timeout():
	time-=1
	$"lbl_timeout".text=str(time)
	if (time == 0):
		$"lbl_timeout".text="GO!"
	if (time == -1):
		_init_game()
	
	pass # Replace with function body.

func _init_game():
	$Timer.autostart=false
	$lbl_timeout.visible=0
	get_tree().paused=false

extends Node

var hud = load("res://juego5/scenes/HUD.tscn")
var scene_pause = load("res://menu_pause.tscn")
var pause=false

var win_player=""
func _ready():
	
	print()
	pass # Replace with function body.

func _on_salir_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_a_win_player2_area_entered(area):
	_win("2")
	
func _win(player):
	get_node("tsb_player1").queue_free()
	get_node("tsb_player2").queue_free()
	win_player=player
	_create_hud()
	pass
func _create_hud():
	var hud_instance= hud.instance()
	add_child(hud_instance)
	
func _on_a_win_player1_area_entered(area):
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

extends Node

var hud = load("res://juego5/scenes/HUD.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var win_player=""
# Called when the node enters the scene tree for the first time.
func _ready():
	
	print()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_salir_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.


func _on_a_win_player2_area_entered(area):
	_win("2")
	pass # Replace with function body.

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
	
	pass # Replace with function body.

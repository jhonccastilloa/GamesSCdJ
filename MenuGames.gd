extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_juego1_pressed():
	get_tree().change_scene("res://juego1/world.tscn")


func _on_juego2_pressed():
	get_tree().change_scene("res://juego2/worldG2.tscn")
	

func _on_juego3_pressed():
	get_tree().change_scene("res://juego3/worldG3.tscn")


func _on_juego4_pressed():
	get_tree().change_scene("res://juego5/worldG5.tscn")


func _on_juego5_pressed():
	get_tree().change_scene("res://juego6/main.tscn")


func _on_juego6_pressed():
	get_tree().change_scene("res://juego7/escenas/principal.tscn")





func _on_salir_pressed():
	get_tree().change_scene("res://MenuPrincipal.tscn")
	pass # Replace with function body.

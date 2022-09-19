extends Control

func _ready():
	pass # Replace with function body.



func _on_JUGAR_pressed():
	get_tree().change_scene("res://juego1/world.tscn")


func _on_JUGAR2_pressed():
	get_tree().change_scene("res://juego2/worldG2.tscn")

extends Control

func _ready():
	pass # Replace with function body.



func _on_JUGAR_pressed():
	get_tree().change_scene("res://juego1/world.tscn")


func _on_JUGAR2_pressed():
	get_tree().change_scene("res://juego2/worldG2.tscn")


func _on_JUGAR3_pressed():
	get_tree().change_scene("res://juego3/worldG3.tscn")
	
	pass # Replace with function body.


func _on_JUGAR4_pressed():
	get_tree().change_scene("res://juego5/worldG5.tscn")
	
	pass # Replace with function body.


func _on_JUGAR5_pressed():
	get_tree().change_scene("res://juego6/main.tscn")
	pass # Replace with function body.

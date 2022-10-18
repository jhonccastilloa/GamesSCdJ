extends Node2D


func _on_nivel1_pressed():
	get_tree().change_scene("res://juego8/escenas/nivel1.tscn")


func _on_nivel2_pressed():
	get_tree().change_scene("res://juego8/escenas/nivel2.tscn")


func _on_nivel3_pressed():
	get_tree().change_scene("res://juego8/escenas/nivel3.tscn")


func _on_SALIR_pressed():
	get_tree().change_scene("res://Menu.tscn")




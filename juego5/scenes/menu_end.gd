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


func _on_btn_restart_pressed():
	get_tree().paused=false
	get_tree().change_scene("res://juego5/worldG5.tscn")
	pass # Replace with function body.


func _on_btn_exit_pressed():
	get_tree().paused=false
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.

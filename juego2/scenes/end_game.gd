extends Node2D

var global=get_tree().current_scene().add_child("res://juego2/worldG2.gd")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("end game: "+ str(global.current_figure))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends Node2D

var o = load("res://juego2/envioronment/o.png")

func _ready():
#	print(get_node("img-xo").texture.get_size().y)
	pass

func change_o():
	get_node("img-xo").texture=o

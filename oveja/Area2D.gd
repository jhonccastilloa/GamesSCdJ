extends Area2D

var ovejaMuerta=load("res://world.gd")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var count=0

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("area_entered", self, "morir")
	

func morir(object):
	
	ovejaMuerta
	queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

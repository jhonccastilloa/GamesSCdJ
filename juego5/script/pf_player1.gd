extends PathFollow2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity=0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_tsb_player1_released():
	print("hola")
	velocity+=1
	self.offset += velocity
	pass # Replace with function body.

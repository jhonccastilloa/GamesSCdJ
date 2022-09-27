extends PathFollow2D

var velocity =0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
#	self.offset += velocity *delta
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TouchScreenButton_released():
	velocity+=1
	self.offset += velocity
	pass # Replace with function body.



extends PathFollow2D

var velocity=0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	print(offset)
	if offset > 686 && offset < 1370:
		print("se volteara la image")
		$spr_player2.flip_h=0
	elif offset > 1371.69:
		print("se volteara ")
		$spr_player2.flip_h=1
	print(self.get_rotation_degrees())
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_tsb_player2_released():
	velocity+=0.1
	self.offset += velocity
	pass # Replace with function body.

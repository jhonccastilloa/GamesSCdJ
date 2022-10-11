extends PathFollow2D

var velocity=0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if offset > 686 && offset < 1370:
		$a_player2/spr_player2.flip_h=false
#		$spr_player2.flip_h=0
	elif offset > 1327.69:
		$a_player2/spr_player2.flip_h=1
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_tsb_player2_released():
	velocity+=0.05
	self.offset += velocity
	pass # Replace with function body.

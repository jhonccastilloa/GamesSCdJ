extends PathFollow2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if offset > 686 && offset < 1370:
		$a_player1/spr_player1.flip_h=false
#		$spr_player2.flip_h=0
	elif offset > 1327.69:
		$a_player1/spr_player1.flip_h=1

func _on_tsb_player1_released():
	velocity+=0.05
	self.offset += velocity
	pass # Replace with function body.

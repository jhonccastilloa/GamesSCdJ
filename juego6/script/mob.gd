extends RigidBody2D

export (int) var MIN_SPEED
export (int) var MAX_SPEED
var mob_types=["ball1","ball2"]

func _ready():
#	randomize()
	$as_mob.animation=mob_types[randi() % mob_types.size()]
#	print(randi() % mob_types.size())
	pass


func _on_vis_mob_screen_exited():
	queue_free()
	pass # Replace with function body.

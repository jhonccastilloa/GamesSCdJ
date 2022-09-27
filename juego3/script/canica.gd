extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_bounce(0.5)
	set_friction(0.2)
#	self.mode=1
	
#	position.x=250
#	print(position.x)
	pass # Replace with function body.

func _process(delta):
	
#	print(mode)
	pass
	
func launch(force : Vector2):
	self.mode=0
	
	apply_impulse(Vector2.ZERO,force*15)
#	print(apply_impulse(Vector2.ZERO,force))
#	get_parent().get_node("canica").mode=3
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_canica_sleeping_state_changed():
#	self.mode=1
	print("dormido")
	
	pass # Replace with function body.

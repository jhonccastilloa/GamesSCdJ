extends RigidBody2D

var count=0

export var speed = 400
var velocity = Vector2.ZERO
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var press=true

# Called when the node enters the scene tree for the first time.
func _ready():
	$ap_kite.play("fly")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HUD_down_pressed():
	velocity.y += 1
	press=false
	print(velocity)
	
func _on_HUD_left_pressed():
	velocity.x -= 1
	press=false
	
	print(velocity)

func _on_HUD_rigth_pressed():
	velocity.x += 1
	press=false
	
	print(velocity)

func _on_HUD_up_pressed():
	velocity.y -= 1
	press=false
	
	print(velocity)
	
func _physics_process(delta):
#	print(delta)
#	print(position)
	if press:
		self.position+=velocity
#	print(press)


func _on_HUD_down_released():
	count+=1
	
	velocity=Vector2.ZERO
	press=true
	print(count)
	
	pass # Replace with function body.


func _on_HUD_left_released():
	velocity=Vector2.ZERO
	
	press=true
	
	pass # Replace with function body.


func _on_HUD_rigth_released():
	velocity=Vector2.ZERO
	
	press=true
	
	pass # Replace with function body.


func _on_HUD_up_released():
	velocity=Vector2.ZERO
	
	press=true
	
	pass # Replace with function body.

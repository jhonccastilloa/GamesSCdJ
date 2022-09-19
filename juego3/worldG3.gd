extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var canicas=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_area_circulo_body_exited(body):
	canicas-=1
	print(canicas)
	pass # Replace with function body.





func _on_area_circulo_body_entered(body):
	canicas+=1
	print(canicas)
	
	pass # Replace with function body.

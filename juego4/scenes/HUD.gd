extends CanvasLayer

signal left_pressed
signal rigth_pressed
signal up_pressed
signal down_pressed


signal left_released
signal rigth_released
signal up_released
signal down_released

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_left_pressed():
	print()
	emit_signal("left_pressed")
func _on_rigth_pressed():
	print("caminar")
	emit_signal("rigth_pressed")
func _on_up_pressed():
	emit_signal("up_pressed")
func _on_down_pressed():
	emit_signal("down_pressed")



func _on_left_released():
	emit_signal("left_released")

	
	pass # Replace with function body.


func _on_rigth_released():
	emit_signal("rigth_released")
	
	pass # Replace with function body.


func _on_up_released():
	emit_signal("up_released")
	
	pass # Replace with function body.


func _on_down_released():
	emit_signal("down_released")
	
	pass # Replace with function body.

extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal resume
signal restart

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btn_resume_pressed():
	get_tree().paused=false
	self.queue_free()
	emit_signal("resume")
	pass # Replace with function body.


func _on_btn_exit_pressed():
	get_tree().paused=false
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.


func _on_btn_restart_pressed():
	emit_signal("restart")
	
	pass # Replace with function body.

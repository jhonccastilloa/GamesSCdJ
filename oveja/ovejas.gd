extends Area2D
var selected = false
func _ready():
	connect("area_entered",self,"ovejaDead")
	
func _process(delta):
	if selected:
		raise()
		followMouse()

func followMouse():
	position = get_global_mouse_position()
	
func _on_oveja_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			selected = true
		else:
			selected = false
func ovejaDead(object):
	get_parent().call("ovejasMuertas")
	queue_free()

extends Area2D

signal vector_created(vector)

export var maximum_length := 200

var touch_down := false
var position_start := Vector2.ZERO
var position_end := Vector2.ZERO

var vector := Vector2.ZERO
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	_draw()
#	connect("input_event",self,"_on_input_event")
	pass # Replace with function body.
func _reset():
	var position_start = Vector2.ZERO
	var position_end = Vector2.ZERO
	var vector = Vector2.ZERO
	update()
	
func _draw()->void:
	draw_line(position_start-global_position,
		(position_end-global_position),
		Color.blue,
		8)
	draw_line(position_start-global_position,(position_start-global_position)+vector,
		Color.red,
		18)
	
	
func _input(event)->void:
	if not touch_down:
		return
	if event.is_action_released("left_click"):
		touch_down=false
		emit_signal("vector_created",vector)
		_reset()
		
	if event is InputEventMouseMotion:
		position_end=event.position
#		print(position_end)
		vector=-(position_end-position_start).clamped(maximum_length)
		print(vector)
		update()

func _on_vector_lanzar_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("left_click"):
		touch_down=true
		position_start=event.position
		print(position_start)
	pass # Replace with function body.

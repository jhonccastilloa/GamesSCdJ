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
var select= false

# Called when the node enters the scene tree for the first time.
func _ready():
#	print(get_parent().get_node("ctrl_interface/h/lbl_titulo"))
#	_draw()
#	get_parent().get_node("canica").position=Vector2(250,250)
#	connect("input_event",self,"_on_input_event")
	pass # Replace with function body.
	
func _physics_process(delta):
	
	update()
#
	pass
#	if Input.is_action_pressed("left_click"):
		
#		get_parent().get_node("canica").global_position=Vector2(position_start)

		
		

	
func _draw()->void:
#	draw_line(position_start,Vector2(30,-30),Color.red,1)
#	draw_line(Vector2(30,-30),Vector2(0,-30),Color.red,1)
#	draw_line(Vector2(0,-30),Vector2(0,0),Color.red,1)
#
	
#	draw_line(Vector2(1,1)-Vector2(0,0),Vector2(0,-1),Color.red,66)
	if select:
#		draw_multiline()
		draw_line(position_start-global_position,
			(position_end-global_position),
			Color.blue,4)
		draw_line(position_start-global_position,((position_start-global_position)+vector*0.5),
			Color.red,9)
		draw_circle((position_start-global_position)+vector*0.53,2,Color.red)
		draw_circle((position_start-global_position)+vector*0.52,2.5,Color.red)
		
		draw_circle((position_start-global_position)+vector*0.50,4,Color.red)
		draw_circle((position_start-global_position)+vector*0.45,6,Color.red)
		draw_circle((position_start-global_position)+vector*0.43,7,Color.red)
		
		
#	draw_line(((position_start-global_position)+vector*0.5)+Vector2(-10,10),(((position_start-global_position)+vector*0.5)),
#		Color.green,2)

	
func _input(event)->void:
	if !touch_down:
		
		return
#	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
	if event is InputEventMouseButton and !event.pressed:
#	if event.is_action_released("left_click"):
		print("released")
		touch_down=false
		emit_signal("vector_created",vector)
		select=false
#		_reset()
		
	if event is InputEventMouseMotion:
		position_end=event.position
		vector=-(position_end-position_start).clamped(maximum_length)
#		print(vector)
		update()

func _on_vector_lanzar_input_event(viewport, event, shape_idx):
	if get_parent().get_node("canica").sleeping:
		if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
	#	if Input.is_action_pressed("left_click"):
			get_parent().get_node("canica").mode=1
			touch_down=true
			position_start=event.position
			print("posicion_start"+str(position_start))
			select=true
			get_parent().get_node("canica").global_position.x=position_start.x
			get_parent().get_node("canica").global_position.y=position_start.y
			_on_change_turn()
			print(position_start)
	pass # Replace with function body.

func _on_change_turn():
	if get_parent().turno==1:
		get_parent().get_node("ctrl_interface/h/lbl_titulo").add_color_override("font_color", Color(0.4, 0.4, 0.4,1))
		get_parent().get_node("ctrl_interface2/h/lbl_titulo").add_color_override("font_color", Color(0,0,1,1))
		get_parent().turno=2
		
	elif get_parent().turno==2:
		get_parent().get_node("ctrl_interface/h/lbl_titulo").add_color_override("font_color", Color(1,0,0,1))
		get_parent().get_node("ctrl_interface2/h/lbl_titulo").add_color_override("font_color", Color(0.4, 0.4, 0.4,1))
		get_parent().turno=1
	

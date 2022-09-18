extends Node2D
var global=load("res://juego2/worldG2.gd")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	_end_game()
#	print(len(hijos))
	
#	for hijo in hijos:q
#		print(hijo.name)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _end_game():
	print("hola")
	var hijos= get_children()
	for i in range (1,len(hijos)) :
		hijos[i].input_pickable=0
func _on_00_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		print("se clickeo")
		get_parent().figure_pos(0,0)
		$"00".input_pickable=0
		


func _on_01_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(0,1)
		$"01".input_pickable=0
		


func _on_02_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(0,2)
		$"02".input_pickable=0


func _on_10_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(1,0)
		$"10".input_pickable=0


func _on_12_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(1,1)
		$"12".input_pickable=0
		


func _on_13_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(1,2)
		$"13".input_pickable=0
		


func _on_20_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(2,0)
		$"20".input_pickable=0
		


func _on_21_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(2,1)
		$"21".input_pickable=0
		


func _on_22_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		get_parent().figure_pos(2,2)
		$"22".input_pickable=0
		

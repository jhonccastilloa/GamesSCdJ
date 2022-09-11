extends Node2D

var ovejaEli = 6
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func ovejasMuertas():
	ovejaEli-=1	
	get_node("InterfazDeUsuario/VBoxContainer/ovejasComidas").text="0"+str(ovejaEli)
	if(ovejaEli==0):
		get_tree().change_scene("res://ganoZorro.tscn")
	
	print(ovejaEli)

func _on_Button_pressed():
	get_tree().change_scene("res://world.tscn")


func _on_ir_a_menu_pressed():
	get_tree().change_scene("res://Menu.tscn")

extends Node2D

var ovejaEli = 0
var num_win=0
var scene_pause = load("res://menu_pause.tscn")
var scene_win = load("res://juego1/environment/menu_win.tscn")

var pause=false
func _ready():
	print(scene_win)
	pass

func ovejasMuertas():
	ovejaEli+=1
	get_node("InterfazDeUsuario/VBoxContainer/ovejasComidas").text="0"+str(ovejaEli)
	if(ovejaEli==6):
		win("EL ZORRO SE COMIO A LAS OVEJAS")
	
	print(ovejaEli)


func _on_LineaGanar_area_entered(area):
	num_win+=1
	print(num_win)
	if num_win==6:
		win("GANARON LAS OVEJAS")
		


func _on_btn_pause_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
		
func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego1/world.tscn")

func win(text):
	var scn_win=scene_win.instance()
	$"Screen_win".add_child(scn_win)
	var lbl_information=$"Screen_win/menu_win/HBoxContainer/lbl_information"
	lbl_information.text=text
	lbl_information.align=1
	get_tree().paused=1
	

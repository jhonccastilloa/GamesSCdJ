extends Node2D

var ovejaEli = 6
var num_win=0
var scene_pause = load("res://menu_pause.tscn")
var pause=false
func _ready():
	pass

func ovejasMuertas():
	ovejaEli-=1
	get_node("InterfazDeUsuario/VBoxContainer/ovejasComidas").text="0"+str(ovejaEli)
	if(ovejaEli==0):
		get_tree().change_scene("res://juego1/ganoZorro.tscn")
	
	print(ovejaEli)


func _on_LineaGanar_area_entered(area):
	num_win+=1
	print(num_win)
	if num_win==6:
		get_tree().change_scene("res://juego1/ganoOveja.tscn")
		print("ganaron las ovejas") # Replace with function body.


func _on_btn_pause_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
		
func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego1/world.tscn")

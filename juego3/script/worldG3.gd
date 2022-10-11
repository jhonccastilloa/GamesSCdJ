extends Node2D


var scene_pause = load("res://menu_pause.tscn")
var pause=false
var hud = load("res://juego3/scenes/HUD.tscn")
var canicas=0
var canicas_obt=8
var moving=false
var canica_in_area=false

func _process(delta):
#	print(canica_in_area)
	_count()
	_win()
	_lose_canica()

func _count():
	$"ctrl_interface/h/lbl_score".text=str(canicas_obt)
	
func _on_area_circulo_body_exited(body):
	canicas-=1
	canicas_obt+=1
	pass # Replace with function body.
func _on_area_circulo_body_entered(body):
	canicas_obt-=1
	canicas+=1
	pass # Replace with function body.

func _on_salir_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.
func _win():
	if $canica2.sleeping and $canica3.sleeping  and $canica4.sleeping  and $canica5.sleeping  and $canica6.sleeping  and $canica7.sleeping and $canica8.sleeping  and $canica9.sleeping  and canicas <= 0:
		_create_hud("se sacaron todas la pelotas")

func _lose_canica():
	if $canica.sleeping and canica_in_area:
		_create_hud("la canica se entro en el area")
		
func _create_hud(text):
	var hud_instance= hud.instance()
	add_child(hud_instance)
	var label_text=$"HUD/ctrl_endgame/VBoxContainer/lbl_text"
	label_text.text=text
	label_text.align=1
	get_tree().paused=1
	
func _on_btn_pause_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego3/worldG3.tscn")


func _on_area_circulo_area_entered(area):
	canica_in_area=true
	pass # Replace with function body.


func _on_area_circulo_area_exited(area):
	canica_in_area=false
	
	pass # Replace with function body.


func _on_area_linea_area_entered(area):
	_create_hud("la canica se salio del terreno")
	pass # Replace with function body.

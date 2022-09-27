extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var hud = load("res://juego3/scenes/HUD.tscn")
var canicas=0
var moving=false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _process(delta):
	var canicas_group=get_tree().get_nodes_in_group("canicas")
	for canica in canicas_group:
		if canica.sleeping:
			moving=false
		else:
			moving=true
	_win()
#	print(get_node("canica2").sleeping)
	
		
	

func _on_area_circulo_body_exited(body):
	canicas-=1
	pass # Replace with function body.





func _on_area_circulo_body_entered(body):
	canicas+=1
	
	pass # Replace with function body.


func _on_salir_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.

func _win():
	print(canicas)
	
	if $canica2.sleeping and $canica3.sleeping  and $canica4.sleeping  and $canica5.sleeping  and $canica6.sleeping  and $canica7.sleeping and $canica8.sleeping  and $canica9.sleeping  and canicas <= 0:
		_create_hud()
		print ("se sacaron todas la pelotas")


func _create_hud():
	var hud_instance= hud.instance()
	add_child(hud_instance)

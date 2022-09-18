extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var win_or_empate=get_parent().state_end_game
	if(win_or_empate==0):
		$display.text="Ganó el jugador o"
	elif(win_or_empate==1):
		$display.text="Ganó el jugador x"
	if(win_or_empate==2):
		$display.text="Empate"
		
	
#	print("el ganador es : "+ str(get_parent().state_end_game))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://juego2/worldG2.tscn")

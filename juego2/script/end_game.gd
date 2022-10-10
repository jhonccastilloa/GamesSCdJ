extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var win_or_empate=get_parent().state_end_game
	var player1=get_parent().get_node("Node2D/lbl_score1").text
	var player2=get_parent().get_node("Node2D/lbl_score2").text
	var empate=get_parent().get_node("Node2D/lbl_score3").text
	
#	var hijos=get_parent().get_children()
#	print(hijos)	
	if(win_or_empate==0):
		$display.text="Ganó el jugador o"
		get_parent().get_node("Node2D/lbl_score2").text=str(int(player2)+1)
	elif(win_or_empate==1):
		$display.text="Ganó el jugador x"
		get_parent().get_node("Node2D/lbl_score1").text=str(int(player1)+1)
	if(win_or_empate==2):
		get_parent().get_node("Node2D/lbl_score3").text=str(int(empate)+1)
		$display.text="Empate"


func _on_Button_pressed():
	var hijos=get_parent().get_children()
	get_parent().board=[[-1,-1,-1],[-1,-1,-1],[-1,-1,-1]]
	get_parent().get_node("board")._restart_game()
	for i in range (1,len(hijos)) :
		if("xo" in (hijos[i].name)):
			hijos[i].queue_free()
	get_parent().get_node("end_game").queue_free()
	get_parent().turno=0
	get_parent().empate=true

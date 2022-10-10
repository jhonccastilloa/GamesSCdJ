extends Node2D

var figure = load("res://juego2/scenes/xo.tscn")
var scene = load("res://juego2/scenes/end_game.tscn")
var scene_pause = load("res://menu_pause.tscn")
var pause=false
var turno=0
var current_figure=0
var state_end_game=-2
var board=[[-1,-1,-1],
		   [-1,-1,-1],
		   [-1,-1,-1]]
var empate=true
# Called when the node enters the scene tree for the first time.
func _ready():
	print(board)
	
	pass # Replace with function body.

#func decirHola():
#	print("hola")
func figure_pos(x,y):
	print(x)
	print(y)
	
	if x == 0 and y == 0 :
		print("selecionado")
		generate_figure(250,55)
	elif x == 0 and y == 1 :
		print("selecionado 2")
		generate_figure(250,185)
	elif x == 0 and y == 2 :
		print("selecionado 3")
		generate_figure(250,305)
	elif x == 1 and y == 0 :
		print("selecionado 4")
		generate_figure(370,55)
	elif x == 1 and y == 1 :
		print("selecionado 5")
		generate_figure(370,185)
	elif x == 1 and y == 2 :
		print("selecionado 6")
		generate_figure(370,305)
	elif x == 2 and y == 0 :
		print("selecionado 7")
		generate_figure(495,55)		
	elif x == 2 and y == 1 :
		print("selecionado 8")
		generate_figure(495,185)
	elif x == 2 and y == 2 :
		print("selecionado 9")
		generate_figure(495,305)
	cambiar_figura()
	cambiar_board(y,x)

func generate_figure(x,y):
	var fig_instance = figure.instance()
	add_child(fig_instance)
	if current_figure==1:
		fig_instance.change_o()
	fig_instance.position.x=x
	fig_instance.position.y=y
func cambiar_figura():
	print(current_figure)
	if current_figure==0:
		get_node("Node2D/lbl_player1").add_color_override("font_color", Color(0.4, 0.4, 0.4,1))
		get_node("Node2D/lbl_player2").add_color_override("font_color", Color(0,0,1,1))
		current_figure=1
	elif current_figure==1:
		get_node("Node2D/lbl_player1").add_color_override("font_color", Color(1,0,0,1))
		get_node("Node2D/lbl_player2").add_color_override("font_color", Color(0.4, 0.4, 0.4,1))
		current_figure=0
func cambiar_board(x,y):
	board[x][y]=current_figure
	win_board()
	print(board)
func win_board():
	turno+=1
#	print("el turno es "+ str(turno))
#	if turno !=9 or !empate:
	for j in range(0,2):
		for i in range(0,3):
			if board[0][i]==j and board[1][i]==j and board[2][i]==j:
				print("gano "+ str(current_figure) )
#				$Node2D/lbl_score1.text=str(int($Node2D/lbl_score1.text)+1)
				state_end_game=	current_figure
				empate=false
				generate_scene()
				
				get_node("board")._end_game()
		for i in range(0,3):
			if board[i][0]==j and board[i][1]==j and board[i][2]==j:
				print("gano horizaontal "+ str(current_figure) )
				state_end_game=	current_figure
				empate=false
#				print($Node2D/lbl_score1.text)
				
				generate_scene()
				get_node("board")._end_game()
		if board[0][0]==j and  board[1][1]==j and board[2][2]==j:
			print("gano diagonal "+ str(current_figure) )
			state_end_game=	current_figure
			empate=false
			generate_scene()
			get_node("board")._end_game()
		if board[0][2]==j and  board[1][1]==j and board[2][0]==j:
			print("gano diagonal "+ str(current_figure) )
			state_end_game=	current_figure
			empate=false
			generate_scene()
			get_node("board")._end_game()
			
	

	if turno == 9 and empate:
		print("no hay ganador")
		state_end_game=2
		generate_scene()
		get_node("board")._end_game()
		
		
		
func generate_scene():
	var scn_instance = scene.instance()
	add_child(scn_instance)


func _on_SALIR_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_btn_pause_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
	pass # Replace with function body.

func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego2/worldG2.tscn")

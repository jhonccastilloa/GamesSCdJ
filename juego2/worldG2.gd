extends Node2D

var figure = load("res://juego2/scenes/xo.tscn")
var scene = load("res://juego2/scenes/end_game.tscn")

var turno=0
var current_figure=0
var state_end_game=-2
var board=[[-1,-1,-1],
		   [-1,-1,-1],
		   [-1,-1,-1]]

# Called when the node enters the scene tree for the first time.
func _ready():
	print(board)
	
	pass # Replace with function body.

func decirHola():
	print("hola")
func figure_pos(x,y):
	print(x)
	print(y)
	
	if x == 0 and y == 0 :
		print("selecionado")
		generate_figure(260,60)
	elif x == 0 and y == 1 :
		print("selecionado 2")
		generate_figure(260,190)
	elif x == 0 and y == 2 :
		print("selecionado 3")
		generate_figure(260,310)
	elif x == 1 and y == 0 :
		print("selecionado 4")
		generate_figure(390,60)
	elif x == 1 and y == 1 :
		print("selecionado 5")
		generate_figure(390,190)
	elif x == 1 and y == 2 :
		print("selecionado 6")
		generate_figure(390,310)
	elif x == 2 and y == 0 :
		print("selecionado 7")
		generate_figure(520,60)		
	elif x == 2 and y == 1 :
		print("selecionado 8")
		generate_figure(520,190)
	elif x == 2 and y == 2 :
		print("selecionado 9")
		generate_figure(520,310)
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
		current_figure=1
	elif current_figure==1:
		current_figure=0
func cambiar_board(x,y):
	board[x][y]=current_figure
	win_board()
	print(board)
func win_board():
	turno+=1
#	print("el turno es "+ str(turno))
	for j in range(0,2):
		for i in range(0,3):
			if board[0][i]==j and board[1][i]==j and board[2][i]==j:
				print("gano "+ str(current_figure) )
				state_end_game=	current_figure			
				generate_scene()
		for i in range(0,3):
			if board[i][0]==j and board[i][1]==j and board[i][2]==j:
				print("gano horizaontal "+ str(current_figure) )
				state_end_game=	current_figure	
				generate_scene()
		if board[0][0]==j and  board[1][1]==j and board[2][2]==j:
			print("gano diagonal "+ str(current_figure) )
			state_end_game=	current_figure	
			generate_scene()	

		if board[0][2]==j and  board[1][1]==j and board[2][0]==j:
			print("gano diagonal "+ str(current_figure) )
			state_end_game=	current_figure	
			generate_scene()
			

	if turno == 9:
		print("no hay ganador")
		state_end_game=2
		generate_scene()
		
func generate_scene():
	var scn_instance = scene.instance()
	add_child(scn_instance)

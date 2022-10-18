extends Node2D


var pregunta_numero
var respuesta
onready var tiempo= $time

var scene_pause = load("res://menu_pause.tscn")
var scene_end = load("res://juego8/escenas/ctrl_endgame.tscn")
var time=20

func _ready():
	randomize()
	preguntar()
	$lbl_tiempo.text=str(time)
	tiempo.connect("timeout",self,"tiempo_cumplido")
	##yield(get_tree().create_timer(1),"timeout") ----- para terminar la funcion
	##$tiempo.start()
	$tmp_game.start()
	time=20
	
func ganador(ganador):
	if ganador==10:
		_end_game("MUY BIEN")
	

func preguntar():
	pregunta_numero = randi() %20
	#print(respuesta)
	if pregunta_numero ==0:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuántas estaciones tiene el año?"
		$RESPUESTA1.text ="son 4" ####
		$RESPUESTA2.text= "son 3"
		$RESPUESTA3.text="son 6"
		
	if pregunta_numero ==1:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿Cuántos meses tiene un año?"
		$RESPUESTA1.text ="15 meses"
		$RESPUESTA2.text= "12 meses"
		$RESPUESTA3.text="11 meses"
	if pregunta_numero ==2:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuántos lados tiene un cuadrado?"
		$RESPUESTA1.text ="5 lados"
		$RESPUESTA2.text= "6 lados"
		$RESPUESTA3.text="4 lados"
	if pregunta_numero ==3:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuánto es 14 mas 26?"
		$RESPUESTA1.text ="40" ####
		$RESPUESTA2.text= "30"
		$RESPUESTA3.text="41"
		
	if pregunta_numero ==4:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿Cuantos dias tiene un año?"
		$RESPUESTA1.text ="356"
		$RESPUESTA2.text= "325"
		$RESPUESTA3.text="365"
	if pregunta_numero ==5:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuántos lados tiene un triangulo?"
		$RESPUESTA1.text ="5 lados"
		$RESPUESTA2.text= "3 lados"
		$RESPUESTA3.text="4 lados"
	if pregunta_numero ==6:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuantas vocales hay?"
		$RESPUESTA1.text ="4" ####
		$RESPUESTA2.text= "5"
		$RESPUESTA3.text="8"
		
	if pregunta_numero ==7:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿Cuánto es 20 mas 25?"
		$RESPUESTA1.text ="45"
		$RESPUESTA2.text= "26"
		$RESPUESTA3.text="46"
	if pregunta_numero ==8:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuánto es 15 mas 26?"
		$RESPUESTA1.text ="42"
		$RESPUESTA2.text= "41"
		$RESPUESTA3.text="39"
	if pregunta_numero ==9:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuánto es 35 menos 15?"
		$RESPUESTA1.text ="14" ####
		$RESPUESTA2.text= "21"
		$RESPUESTA3.text="20"
		
	if pregunta_numero ==10:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿Cuál es la capital del Perú?"
		$RESPUESTA1.text ="Lima"
		$RESPUESTA2.text= "Puno"
		$RESPUESTA3.text="El Callao"
	if pregunta_numero ==11:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuántos departamentos tiene el Perú?"
		$RESPUESTA1.text ="25"
		$RESPUESTA2.text= "24"
		$RESPUESTA3.text="23"
	if pregunta_numero ==12:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuánto es 1D mas 5U"
		$RESPUESTA1.text ="15" ####
		$RESPUESTA2.text= "25"
		$RESPUESTA3.text="105"
		
	if pregunta_numero ==13:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿Cuánto es 4 multiplicado por 3?"
		$RESPUESTA1.text ="15 "
		$RESPUESTA2.text= "12 "
		$RESPUESTA3.text="11 "
	if pregunta_numero ==14:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuánto es la mitad de 12?"
		$RESPUESTA1.text ="5"
		$RESPUESTA2.text= "3"
		$RESPUESTA3.text="6"
	if pregunta_numero ==15:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuánto es el doble de 14?"
		$RESPUESTA1.text ="28" ####
		$RESPUESTA2.text= "23"
		$RESPUESTA3.text="25"
		
	if pregunta_numero ==16:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿A mal tiempo?"
		$RESPUESTA1.text ="Buena cara"
		$RESPUESTA2.text= "Se lo lleva la corriente"
		$RESPUESTA3.text="Te dire quien eres"
	if pregunta_numero ==17:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuánto es 23 mas 25?"
		$RESPUESTA1.text ="43"
		$RESPUESTA2.text= "47"
		$RESPUESTA3.text="48"
	if pregunta_numero ==18:
		#print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuánto es la mitad de 24?"
		$RESPUESTA1.text ="12" ####
		$RESPUESTA2.text= "14"
		$RESPUESTA3.text="16"
		
	if pregunta_numero ==19:
	#	print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿La capital de Puno es?"
		$RESPUESTA1.text ="Ilave"
		$RESPUESTA2.text= "El Collao"
		$RESPUESTA3.text="Puno"
	if pregunta_numero ==20:
		##print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Qué animal maulla?"
		$RESPUESTA1.text ="El perro"
		$RESPUESTA2.text= "El gato"
		$RESPUESTA3.text="La paloma"
var acumulador=0
func responder():
	
	if pregunta_numero ==0:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==1:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==2:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
	if pregunta_numero ==3:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==4:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
	if pregunta_numero ==5:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==6:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==7:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==8:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==9:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
	if pregunta_numero ==10:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==11:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==12:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==13:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==14:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
	if pregunta_numero ==15:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==16:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==17:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
	if pregunta_numero ==18:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
	if pregunta_numero ==19:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==3:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
	if pregunta_numero ==20:
		if respuesta==1:
			$RESPUESTAS.text="INCORRECTO"
		if respuesta==2:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
			ganador(acumulador)
		if respuesta==3:
			$RESPUESTAS.text="INCORRECTO"
			
func _on_RESPUESTA1_pressed():
	respuesta=1
	responder()
	preguntar()
func _on_RESPUESTA2_pressed():
	respuesta=2
	responder()
	preguntar()
func _on_RESPUESTA3_pressed():
	respuesta=3
	responder()
	preguntar()

func _on_Timer_timeout():
	time-=1
	$lbl_tiempo.text=str(time)
	if(time==0):
		##_end_game("SE ACABO EL TIEMPO")
		$musica.playing = false
		$perder.playing = true



func _on_ONE_pressed():
	respuesta=3
	responder()
	preguntar()

func _end_game(text):
	var end_instance=scene_end.instance()
	$screen_game.add_child(end_instance)
	var lbl_info=$"screen_game/ctrl_endgame/VBoxContainer/lbl_info"
	lbl_info.text=text
	lbl_info.align=1
	get_tree().paused=1

func _on_SALIR_pressed():
	get_tree().change_scene("res://juego8/escenas/triviador.tscn")


func _on_tmp_game_timeout():
	time-=1
	$lbl_tiempo.text=str(time)
	if(time==0):
		_end_game("SE ACABO EL TIEMPO")
		

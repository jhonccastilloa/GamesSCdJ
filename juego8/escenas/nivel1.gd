extends Node2D


var pregunta_numero
var respuesta

func _ready():
	randomize()
	preguntar()


func preguntar():
	pregunta_numero = randi() %3
	print(respuesta)
	if pregunta_numero ==0:
		print ("¿Cuántas estaciones tiene el año?")
		$PREGUNTAS.text ="¿Cuántas estaciones tiene el año?"
		$RESPUESTA1.text ="4 estaciones" ####
		$RESPUESTA2.text= "3 estaciones"
		$RESPUESTA3.text="6 estaciones"
		
	if pregunta_numero ==1:
		print ("¿Cuántos meses tiene un año?")
		$PREGUNTAS.text ="¿Cuántos meses tiene un año?"
		$RESPUESTA1.text ="15 meses"
		$RESPUESTA2.text= "12 meses"
		$RESPUESTA3.text="11 meses"
	if pregunta_numero ==2:
		print ("¿Cuántos lados tiene un cuadrado?")
		$PREGUNTAS.text ="¿Cuántos lados tiene un cuadrado?"
		$RESPUESTA1.text ="5 lados"
		$RESPUESTA2.text= "6 lados"
		$RESPUESTA3.text="4 lados"
var acumulador=0
func responder():
	if pregunta_numero ==0:
		if respuesta==1:
			$RESPUESTAS.text="CORRECTO"
			acumulador+=1
			$puntaje.text=str(acumulador)
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
	pass # Replace with function body.



func _on_ONE_pressed():
	respuesta=3
	responder()
	preguntar()


func _on_SALIR_pressed():
	get_tree().change_scene("res://juego8/escenas/triviador.tscn")

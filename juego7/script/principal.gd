extends Node2D


export var cantidad_carta: int=2
onready var cartaPrefab = preload("res://juego7/escenas/carta.tscn")
onready var tiempo= $tiempo

var carta_al_descubierto = null
var _cartas = []
var scene_pause = load("res://menu_pause.tscn")
var scene_end = load("res://juego7/escenas/ctrl_endgame.tscn")

var pause=false
var cantidad_actual = 0
var time=0
var point=0

func _ready():
	randomize()
	
	tiempo.connect("timeout",self,"tiempo_cumplido")
	$label.text = str(cantidad_carta)

func _columnas_para_cartas(carta: int) -> int:
	match carta:
		2:
			return 2
		4:
			return 2
		6:
			return 3
		8:
			return 4
		10:
			return 4
		12:
			return 4
		14:
			return 5
		16:
			return 4
		18:
			return 6
		20:
			return 5
		22:
			return 6
		24:
			return 6
		26:
			return 7
		28:
			return 7
		30:
			return 8
		32:
			return 8
		_:
			return 0


func init_game():
	
	cantidad_carta= cantidad_actual ##*2
	
	var columns: int = _columnas_para_cartas(cantidad_carta)
	var fila : int  = ceil(float (cantidad_carta)/float(columns))
	var ancho_fila: int = min((730-100)/columns, (436-100)/ fila )
	var ancho_carta : int = floor (ancho_fila/ 1.25)
	var fila_offset: int = (ancho_fila - ancho_carta)
	var margen_fila: int = (736-(ancho_carta*columns+fila_offset*(columns-1)))/2
	var ultimo_margen_filas= 0 
	
	if cantidad_carta % columns >0 :
		var ultima_fila_vacia = (columns-(cantidad_carta % columns))
		ultimo_margen_filas= (ultima_fila_vacia * ancho_fila)/2
	
	var numero : Array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
	
	while numero.size() > cantidad_carta / 2:
		numero.remove(randi()%numero.size())
		
	var caras : Array = []
		
	for i in range(floor(cantidad_carta/2)):
		var cara: String = "carta_"+ str(numero[i])
		caras.append(cara)
		caras.append(cara)
			
	var f2: Array = []
	while caras.size():
		if f2.size()== 0:
			f2.append(caras[0])
		else:
			f2.insert(randi()%(f2.size()+1),caras[0])
		caras.remove(0)
	caras=f2
	
	for i in range (cantidad_carta):
		var r= floor(i/columns)
		var c= i%columns
		var extra = 0
		if r== fila -1:
			extra= ultimo_margen_filas
			
		var carta = cartaPrefab.instance()
		carta.add_to_group("carta")
		carta.global_position= Vector2(margen_fila + c*ancho_fila+extra,100+r*ancho_fila)
		
		carta.scale = Vector2(ancho_carta/252.0, ancho_carta/252.0)
		self.add_child(carta)
		carta.poner_cara(caras[i])
#		carta.scale=Vector2(,1)
		
		carta.connect("clicked", self, "_on_clicked_carta")
		carta.connect("volteado", self, "_on_card_flipped")

func _on_clicked_carta(carta):
	if !carta.esta_volteado:
		carta.flip()
		
func _on_card_flipped(carta):
	if carta.esta_volteado:
		if carta_al_descubierto == null:
			
			carta_al_descubierto = carta
		else:
			if carta_al_descubierto.cara == carta.cara:
				print("holi")
				_points()
				carta_al_descubierto= null
				if _are_full_card_flipped():
					print("holi perro")
					yield(get_tree().create_timer(1),"timeout")
					_end_game("VOLTEASTES TODAS LAS CARTAS")
			else:
				_cartas.append(carta_al_descubierto)
				_cartas.append(carta)
				$tiempo.start()
				carta_al_descubierto= null

func tiempo_cumplido():
	while _cartas.size():
		var car= _cartas [0]
		_cartas.remove(0)
		car.reset()

func clear_game():
	yield(get_tree().create_timer(1),"timeout")
	var cartas= _find_all_cards()
	while cartas.size()>0:
		cartas[0].queue_free()
		cartas.remove(0)
	$boton_jugar.visible= true
	$label.visible= true
	$cantidad.visible=true
	
func _are_full_card_flipped()->bool:
	for carta in _find_all_cards():
		if !carta.esta_volteado:
			return false
		
	return true
func _find_all_cards()-> Array:
	var res : Array= []
	var hijos = self.get_children()
	for hijo in hijos:
		if hijo.is_in_group("carta"):
			res.append(hijo)
	return res
func _on_boton_jugar_pressed():
	cantidad_actual= $cantidad.value
	$boton_jugar.visible = false
	$cantidad.visible=false
	$label.visible= false
	$label2.visible= false
	$lbl_tiempo.visible=true
	$lbl_point.visible=true
	$lbl_puntaje.visible=true
	$tmp_game.start()
	time=$cantidad.value+9
	init_game()

func _on_cantidad_value_changed(value):
	$label.text = str(value)
	

func _on_TextureButton_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
		
func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego7/escenas/principal.tscn")
	

func _on_tmp_game_timeout():
	time-=1
	$lbl_tiempo.text=str(time)
	if(time==0):
		_end_game("SE ACABO EL TIEMPO")

func _end_game(text):
	var end_instance=scene_end.instance()
	$screen_game.add_child(end_instance)
	var lbl_info=$"screen_game/ctrl_endgame/VBoxContainer/lbl_info"
	lbl_info.text=text
	lbl_info.align=1
	get_tree().paused=1

func _points():
	point+=25
	time+=5
	$"lbl_puntaje".text=str(point)

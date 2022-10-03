extends Node2D

signal volteado(carta)
signal clicked(carta)

var esta_volteado : bool
var cara : String

onready var frontal= $frontal
onready var cubierta= $cubierta
onready var click= $clicked

func _ready():
	$anim.play("cubrir")
	click.connect("clicked", self, "_on_clicked")

func poner_cara (f: String):
	cara = f
	
	frontal.texture = load("res://juego7/cartas/"+cara+".jpg")
func flip():
	if esta_volteado: return
	
	$anim.play("descubrir")
	esta_volteado=true
	emit_signal("volteado",self)

func reset():
	if !esta_volteado: return
	
	$anim.play("cubrir")
	esta_volteado=false
	emit_signal("volteado",self)

func _on_clicked():
	emit_signal("clicked",self)

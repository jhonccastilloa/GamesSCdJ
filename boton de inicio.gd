extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 

func _on_boton_de_inicio_pressed():
	get_tree().change_scene("res://lista_de_juegos.tscn")

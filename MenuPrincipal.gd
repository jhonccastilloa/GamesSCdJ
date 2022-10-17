extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cont=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	if cont ==0:
		$sounde.playing = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_JUGAR_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.


func _on_btn_salir_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_sound_pressed():
	
	$sounde.playing = false
	cont+=1
	
	if cont%2==0:
		$sounde.playing = true
		
		
	
	print(cont)

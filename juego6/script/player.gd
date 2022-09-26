extends Area2D
signal hit
export (int) var speed
var screen_size
var press_right=false
var press_left=false
var press_up=false
var press_down=false

func _ready():
	hide()
	
	screen_size=get_viewport_rect().size
#	$cs_player.disabled=true
#	print(screen_size)
	
	pass

func _process(delta):
	var velocity=Vector2()
	if press_right:
		velocity.x +=1
	if press_left:
		velocity.x -=1
	if press_up:
		velocity.y -=1
	if press_down:
		velocity.y +=1
	if velocity.length() > 0.1:
		velocity=velocity.normalized()*speed
		$as_player.play()
	else:
		$as_player.stop()
	position += velocity*delta
	position.x=clamp(position.x,0,screen_size.x)
	position.y=clamp(position.y,0,screen_size.y)
	
	if velocity.x !=0:
		$as_player.animation="right"
		$as_player.flip_v=false
		$as_player.flip_h=velocity.x < 0
	elif velocity.y < 0:
		$as_player.animation="up"
		$as_player.flip_h=false
		$as_player.flip_v=false
	elif velocity.y > 0:
		$as_player.animation="down"
		$as_player.flip_h=false
		$as_player.flip_v=false
		
	



func _on_player_body_entered(body):
	hide()
	emit_signal("hit")
#	get_node("cs_player").disabled=true
	print("entro algo en mi nea")
	$cs_player.set_deferred("disabled", true)
	
	# Replace with function body.
func start(pos):
	position=pos
	show()
	get_parent().get_node("Controles/tbs_up").visible=1
	get_parent().get_node("Controles/tbs_down").visible=1
	get_parent().get_node("Controles/tsb_right").visible=1
	get_parent().get_node("Controles/tbs_left").visible=1
		
	$cs_player.disabled=false
	pass


func _on_tsb_right_pressed():
	press_right=true
	pass # Replace with function body.


func _on_tsb_right_released():
	press_right=false
	pass # Replace with function body.


func _on_tbs_left_pressed():
	press_left=true
	pass # Replace with function body.


func _on_tbs_left_released():
	press_left=false
	pass # Replace with function body.


func _on_tbs_up_pressed():
	press_up=true
	
	pass # Replace with function body.


func _on_tbs_up_released():
	press_up=false
	
	pass # Replace with function body.


func _on_tbs_down_pressed():
	press_down=true
	
	pass # Replace with function body.


func _on_tbs_down_released():
	press_down=false
	
	pass # Replace with function body.

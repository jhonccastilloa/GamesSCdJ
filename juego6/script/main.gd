extends Node2D

export(PackedScene) var Mob

var score
var scene_pause = load("res://menu_pause.tscn")
var pause=false
func _ready():
	randomize()
	$musica.playing= true
	pass
#	print($start_timer.)
func new_game():
	score = 0;
	$player.start($start_position.position)
	$start_timer.start()
	$HUD.update_score(score)
	$HUD.show_messages("Estas Listo?")
	


func _on_mob_timer_timeout():
	var mob = Mob.instance()
	$mob_path/mob_spaw_location.set_offset(randi())
	
	var direction= $mob_path/mob_spaw_location.rotation+PI/2
	mob.position=$mob_path/mob_spaw_location.position
	direction+=rand_range(-PI/4,PI/4)
	mob.rotation=direction
	
	var velocity = Vector2(rand_range(150.0, 250.0), 0.0)
	mob.linear_velocity=velocity.rotated(direction)
#	mob.set_linear_velocity(Vector2(rand_range(mob.MIN_SPEED,mob.MAX_SPEED),0).rotated(direction))
	add_child(mob)
	pass # Replace with function body.


func _on_score_timer_timeout():
	score+=1
	$HUD.update_score(score)
	pass # Replace with function body.



func _on_start_timer_timeout():
	$mob_timer.start()
	$score_timer.start()
#	pass # Replace with function body.



func game_over():
	$mob_timer.stop()
	$score_timer.stop()
	$HUD.show_game_over()
	pass # Replace with function body.




func _on_tbs_down_pressed():
	pass # Replace with function body.


func _on_TouchScreenButton_pressed():
	if !pause:
		var scn_pause=scene_pause.instance()
		$"Screen".add_child(scn_pause)
		scn_pause.connect("restart",self,"on_restart")
		get_tree().paused=1
		
func on_restart():
	get_tree().paused=0
	get_tree().change_scene("res://juego6/main.tscn")

var musica=0
func _on_btn_musica_pressed():
	$musica.playing = false
	musica+=1
	
	if musica%2==0:
		$musica.playing = true
		

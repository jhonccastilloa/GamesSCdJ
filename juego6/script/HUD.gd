extends CanvasLayer

signal start_game

func show_messages(text):
	$message_label.text=text
	$message_label.show()
	$message_timer.start()
	
func show_game_over():
	show_messages("Game Over")
	yield($message_timer,"timeout")
	$start_button.show()
	$message_label.text='Esquiva los Balones!'
	$message_label.show()
func update_score(score):
	$score_label.text=str(score)

func _ready():
	pass


func _on_message_timer_timeout():
	$message_label.hide()
	pass # Replace with function body.


func _on_start_button_pressed():
	$start_button.hide()
	emit_signal("start_game")
	pass # Replace with function body.

extends Area2D


signal clicked

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == BUTTON_LEFT:
			print("gola")
			self.emit_signal("clicked")

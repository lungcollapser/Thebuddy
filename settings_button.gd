extends BounceCursor

func _on_settings_button_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Settings.visible = true

		


func _on_settings_button_area_mouse_entered(): 
	bounce_start()


func _on_settings_button_area_mouse_exited(): 
	bounce_stop()

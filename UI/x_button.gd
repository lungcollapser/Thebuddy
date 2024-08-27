extends BounceCursor

func _on_x_button_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			%Settings.visible = false

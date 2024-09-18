extends TextureButton


func _on_settings_button_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Settings.visible = true
		%XButton.visible = true



func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")
	


func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")
	
	

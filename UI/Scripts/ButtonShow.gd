extends BounceCursor

func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.boo()
		%Buddy1Body.visible = true

func _on_area_2d_mouse_entered():
	bounce_start()
		
func _on_area_2d_mouse_exited():
	bounce_stop()

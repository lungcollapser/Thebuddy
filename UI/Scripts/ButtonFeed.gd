extends BounceCursor

#Code for activating the button. Works using signal from collisionshape2D
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.feed_buddy()
		%Buddy1Body.full_buddy()
		
func _on_area_2d_mouse_entered():
	bounce_start()
		
func _on_area_2d_mouse_exited():
	bounce_stop()

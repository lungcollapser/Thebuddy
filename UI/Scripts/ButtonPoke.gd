extends BounceCursor

#Code for activating the button. Works using signal from collisionshape2D
func _on_button_area_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body._jump_up()
		
		
func _on_poke_button_area_mouse_entered():
	bounce_start()
	
	

func _on_poke_button_area_mouse_exited():
	bounce_stop()

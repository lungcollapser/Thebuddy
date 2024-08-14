extends Button1_Bounce_Cursor

#Code for activating the button. Works using signal from collisionshape2D
func _on_button_area_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body._jump_up()
		
func _entered():
	_on_button_area_mouse_entered()
	
func _exited():
	_on_button_area_mouse_exited()



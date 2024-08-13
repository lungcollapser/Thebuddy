extends Node2D

#Code for activating the button. Works using signal from collisionshape2D
func _on_button_area_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body._jump_up()

func _on_button_area_mouse_entered():
	%Cursor.cursor_hovering = true	
	if %Cursor.anim_timer == true:
		%Cursor.bounce_cursor()
		
func _on_button_area_mouse_exited():
	%Cursor.cursor_hovering = false

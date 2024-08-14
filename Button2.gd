extends Button1_Bounce_Cursor

#Code for activating the button. Works using signal from collisionshape2D
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.visible = false

func _on_area_2d_mouse_entered():
	%Cursor.cursor_hovering = true	
	if %Cursor.anim_timer == true:
		%Cursor.bounce_cursor()
		
func _on_area_2d_mouse_exited():
	%Cursor.cursor_hovering = false

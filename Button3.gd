extends Node2D

func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.boo()
		%Buddy1Body.visible = true

func _on_area_2d_mouse_entered():
	%Cursor.cursor_hovering = true	
	if %Cursor.anim_timer == true:
		%Cursor.bounce_cursor()
		
func _on_area_2d_mouse_exited():
	%Cursor.cursor_hovering = false

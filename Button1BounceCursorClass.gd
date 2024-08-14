extends Node2D
class_name Button1_Bounce_Cursor

func _on_button_area_mouse_entered():
	%Cursor.cursor_hovering = true	
	if %Cursor.anim_timer == true: ## Checks that bounce_cursor is not already running
		%Cursor.bounce_cursor()
		
func _on_button_area_mouse_exited():
	%Cursor.cursor_hovering = false


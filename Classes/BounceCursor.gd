extends Node2D
class_name BounceCursor

func bounce_start():
	%Cursor.cursor_hovering = true	
	if %Cursor.anim_timer == true: ## Checks that bounce_cursor is not already running
		%Cursor.bounce_cursor()
		
func bounce_stop():
	%Cursor.cursor_hovering = false

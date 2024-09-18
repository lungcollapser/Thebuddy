extends Node2D
class_name BounceCursor

func bounce_start():
	GlobalCursor.cursor_hovering = true	
	if GlobalCursor.anim_timer == true: ## Checks that bounce_cursor is not already running
		GlobalCursor.bounce_cursor()
		
func bounce_stop():
	GlobalCursor.cursor_hovering = false

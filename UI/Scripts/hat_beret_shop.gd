extends BounceCursor

@onready var bounce_cursor = get_node("ButtonBounceCursorClass")


func _on_hat_beret_area_mouse_entered():
	bounce_start()


func _on_hat_beret_area_mouse_exited():
	bounce_stop()

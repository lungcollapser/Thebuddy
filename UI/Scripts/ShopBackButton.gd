extends BounceCursor

func _on_shop_back_button_area_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://BuddyGame.tscn")
		



func _on_shop_back_button_area_mouse_entered():
	bounce_start()
	

func _on_shop_back_button_area_mouse_exited():
	bounce_stop()

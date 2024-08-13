extends Node2D



func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.boo()
		%Buddy1Body.visible = true

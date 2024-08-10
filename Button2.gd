extends Node2D

#Code for activating the button. Works using signal from collisionshape2D
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.visible = false

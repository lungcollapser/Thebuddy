extends Node2D
@onready var cursor_area = $CursorArea

#Code for activating the button. Works using signal from collisionshape2D
func _on_button_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body._jump_up()
		

func _on_button_area_area_entered(area):
		pass		


func _on_button_area_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.

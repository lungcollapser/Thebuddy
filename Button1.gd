extends Node2D
var cursor1 = preload("res://Sprites/UI/cursor1.png")
var cursor2 = preload("res://Sprites/UI/cursor2.png")
var cursor_node = preload("res://Cursor.gd")
#Code for activating the button. Works using signal from collisionshape2D
func _on_button_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body._jump_up()
		


func _on_button_area_mouse_entered():
	if cursor1 == cursor1:
		Input.set_custom_mouse_cursor(cursor2, Input.CURSOR_ARROW, Vector2(0,0))
		
	

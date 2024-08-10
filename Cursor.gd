extends Node2D

var cursor1 = preload("res://Sprites/UI/cursor1.png")
var cursor2 = preload("res://Sprites/UI/cursor2.png")

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		Input.set_custom_mouse_cursor(cursor2, Input.CURSOR_ARROW, Vector2(0,0))
	else: 
		Input.set_custom_mouse_cursor(cursor1, Input.CURSOR_ARROW, Vector2(0,0))

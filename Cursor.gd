extends Node2D

var cursor1 = preload("res://Sprites/Aseprite/UI/Cursor/cursor1.png")
var cursor2 = preload("res://Sprites/Aseprite/UI/Cursor/cursor2.png")

## Anim was not working so I changed functions
## There is a method to scaling pixel art using "nearest neighbor" that keeps it crispy but I couldnt figure it out

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		Input.set_custom_mouse_cursor(cursor2, Input.CURSOR_ARROW, Vector2(0,0))
	else: 
		Input.set_custom_mouse_cursor(cursor1, Input.CURSOR_ARROW, Vector2(0,0))




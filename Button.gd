extends Button

var hey = "hey"



func _on_pressed():
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		print("hey")

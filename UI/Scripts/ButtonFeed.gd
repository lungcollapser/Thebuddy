extends BounceCursor

#Code for activating the button. Works using signal from collisionshape2D
func _on_feed_button_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.feed_buddy()
		%Buddy1Body.full_buddy()
	if %Buddy1Body.hunger_meter == 0:
		%FeedButtonShape.disabled = true


func _on_feed_button_area_mouse_entered():
	bounce_start()
	

func _on_feed_button_area_mouse_exited():
	bounce_stop()

extends BounceCursor

#Code for activating the button. Works using signal from collisionshape2D
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		%Buddy1Body.feed_buddy()
	#if Input.is_action_just_pressed("toggle_disabled"):
		#%Budd1Body.feed_buddy() == false
		#await get_tree().create_timer(20).timeout
		#%Budd1Body.feed_buddy() == true
		
func _on_area_2d_mouse_entered():
	bounce_start()
		
func _on_area_2d_mouse_exited():
	bounce_stop()

extends TextureButton

#Code for activating the button. Works using signal from collisionshape2D
func _on_button_down():	
	%Buddy1Body.feed_buddy()
	%Buddy1Body.full_buddy()
	if %Buddy1Body.hunger_meter == 0:
		%FeedButtonShape.disabled = true

func _on_mouse_entered() -> void:
	Events.emit_signal("call_bounce_start")


func _on_mouse_exited() -> void:
	Events.emit_signal("call_bounce_stop")

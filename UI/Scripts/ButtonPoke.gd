extends TextureButton


func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")




func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")


func _on_button_down():
	%Buddy1Body._jump_up()

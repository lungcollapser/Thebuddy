extends Events


func _on_mouse_entered():
	if is_in_group("bounce"):
		Events.emit_signal("call_bounce_start")
		
	

func _on_mouse_exited():
	if is_in_group("bounce"):
		Events.emit_signal("call_bounce_stop")


func _on_button_down():
	%Settings.visible = true
	%XButton.visible = true

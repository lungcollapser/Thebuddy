extends TextureButton


func _on_mouse_entered() -> void:
	Events.emit_signal("call_bounce_start")


func _on_mouse_exited() -> void:
	Events.emit_signal("call_bounce_stop")

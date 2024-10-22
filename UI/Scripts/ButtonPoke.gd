extends TextureButton

var hands_up
var hands_down

func _ready() -> void:
	hands_down = get_tree().get_nodes_in_group("HandsDown")[0]
	hands_up = get_tree().get_nodes_in_group("HandsUp")[0]

func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")
	hands_up.play("HandsUpAnimation")




func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")
	hands_down.play("HandsDownAnimation")
	 

func _on_button_down():
	%Buddy1Body._jump_up()

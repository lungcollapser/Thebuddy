extends TextureButton

var settings
var x_button


func _ready() -> void:
	settings = get_tree().get_nodes_in_group("Settings")[0]
	x_button = get_tree().get_nodes_in_group("Settings")[1]

func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")
		
	

func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")


func _on_button_down():
	settings.visible = true
	x_button.visible = true

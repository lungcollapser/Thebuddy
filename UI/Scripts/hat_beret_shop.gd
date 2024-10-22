extends TextureButton

var buddy
@onready var hat_beret = $HatBeretShop.instatiate()

func _ready() -> void:
	buddy = get_tree().get_nodes_in_group("Buddy")

func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")
	
	

func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")



func _on_button_down():

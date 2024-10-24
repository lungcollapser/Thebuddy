extends TextureButton


var price_of_beret = 100
var hat_beret_inv 


func _ready():
	hat_beret_inv = get_tree().get_first_node_in_group("hatberetinv")

func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")
	
	

func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")



func _on_button_down():
	hat_beret_inv.visible = true 

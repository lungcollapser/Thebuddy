extends TextureButton 
var inventory 


func _ready():
	inventory = get_tree().get_nodes_in_group("Inventory")[0]

func _on_button_down():
	inventory.visible = true


func _on_mouse_entered():
	Events.emit_signal("call_bounce_start")
	
	

func _on_mouse_exited():
	Events.emit_signal("call_bounce_stop")

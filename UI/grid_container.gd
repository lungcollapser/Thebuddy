extends GridContainer
class_name HatInventory

var hat_beret_buddy
var hat_bowl_buddy
@onready var hat_beret_inv = $HatBeretInventory
var hat_buddy_check = false



func _ready() -> void:
	hat_beret_buddy = get_tree().get_nodes_in_group("HatBeretBuddy")[0]
	hat_bowl_buddy = get_tree().get_nodes_in_group("HatBowlBuddy")[0]

func _on_hat_beret_inventory_button_down():
	hat_beret_buddy.visible = true
	



func _on_hat_bowl_inventory_button_down():
	hat_bowl_buddy = true
	
		


#Possible fix for these code conditions. Test later
#if hat_beret_buddy == false and hat_buddy_check == false:
#		hat_beret_buddy.visible = true
#		hat_buddy_check = true
#	else: 
#		hat_beret_buddy.visible = false

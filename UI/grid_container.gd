extends GridContainer
class_name HatInventory

var hat_beret_buddy
var hat_bowl_buddy
@onready var hat_beret_inv = $HatBeretInventory
var hat_buddy_check = false




func _on_hat_beret_inventory_button_down():
	if hat_buddy_check == false:
		hat_buddy_check = true
		hat_beret_buddy.visible = true
		hat_bowl_buddy.visible = false
	elif hat_buddy_check == true:
		hat_buddy_check = false
		hat_beret_buddy.visible = false
		
	



func _on_hat_bowl_inventory_button_down():
	if hat_buddy_check == false:
		hat_buddy_check = true
		hat_bowl_buddy.visible = true
		hat_beret_buddy.visible = false
	elif hat_buddy_check == true:
		hat_buddy_check = false
		hat_bowl_buddy.visible = false


#Possible fix for these code conditions. Test later
#if hat_beret_buddy == false and hat_buddy_check == false:
#		hat_beret_buddy.visible = true
#		hat_buddy_check = true
#	else: 
#		hat_beret_buddy.visible = false

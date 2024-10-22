extends Node2D
var hat_beret_buddy
var hat_bowl_buddy


var hat_buddy_check = false
var hat_beret_check
var hat_bowl_check


func _ready():
	hat_beret_buddy = get_tree().get_nodes_in_group("HatBeretBuddy")[0]
	hat_bowl_buddy = get_tree().get_nodes_in_group("HatBowlBuddy")[0]
	
	


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

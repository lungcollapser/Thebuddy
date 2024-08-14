extends CharacterBody2D
const JUMP_VELOCITY = -150
const SPEED = 100
var hunger = 100
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


#Adds the gravity.
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		
	move_and_slide()
#Adds a jumop function to the buddy(mainly for testing).
func _jump_up(): 
	if is_on_floor():
		velocity.y += JUMP_VELOCITY
	

	move_and_slide()
	#Allows the HungerText label to become visible. Used in the button scripts for activation. 
func boo():
	%HungerText.visible = true	
	#The hunger function meant to reduce hunger overtime. 
func reduce_hunger():
	while hunger > 1:
		hunger -= 1
		
	

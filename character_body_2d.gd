extends CharacterBody2D
const JUMP_VELOCITY = 150
const SPEED = 100
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	move_and_slide()

func _on_button_pressed(JUMP): 
	velocity.y = JUMP_VELOCITY * SPEED 



	move_and_slide()

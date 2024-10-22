extends CharacterBody2D
const JUMP_VELOCITY = -300
const SPEED = 100
var hunger_meter = 30
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var hands_up_animation = $HandsUpAnimation
@onready var hands_down_animation = $HandsDownAnimation


#Adds the gravity to the scene.
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		
	move_and_slide()
#Adds a jump function to the buddy(mainly for testing).
func _jump_up(): 
	if is_on_floor():
		velocity.y += JUMP_VELOCITY
	move_and_slide()


#-------------------------------------------------------------------------------


#Function for feeding the buddy. Clamp allows it to have a maximum value of 10. 
#The print is for testing
func feed_buddy():
	hunger_meter = clamp(hunger_meter, 0, 30)
	if hunger_meter < 20:
		hunger_meter += 10
	
func full_buddy():
	if hunger_meter >= 25:
		%Full.visible = true
		await get_tree().create_timer(2).timeout
		%Full.visible = false
		

#This is a seperate lose hunger awsda. We call this at the end of _on_timer_timeout to reduce the hunger overtime and show the labels.
#The print is for testing.
func lose_hunger():
	hunger_meter -= 1
	hunger_meter = clamp(hunger_meter, 0, 30)
	print(hunger_meter)
	
#Function for the timer to reduce the hunger meter by 1 after 1 second. 
#The print is for testing. It also dsiplays different text after two second intervals.
#THIS IS LIKELY TEMPORARY CODE FOR TESTING 
func _on_timer_timeout():
	if hunger_meter == 20:
		%Hunger75.visible = true
		await get_tree().create_timer(2).timeout
		%Hunger75.visible = false
	elif hunger_meter == 13:
		%Hunger50.visible = true
		await get_tree().create_timer(2).timeout
		%Hunger50.visible = false
	elif hunger_meter == 5:
		%Hunger25.visible = true
		await get_tree().create_timer(2).timeout
		%Hunger25.visible = false
	elif hunger_meter == 0:
		%Dead.visible = true
		
	lose_hunger()
	

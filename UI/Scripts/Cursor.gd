extends Node2D

var cursor_default = preload("res://Sprites/UI/cursor1.png")
var cursor_click = preload("res://Sprites/UI/cursor2.png")
var cursor_anim = preload("res://Sprites/UI/cursor_anim.png")

var cursor_hovering = false
var anim_timer = true

const OFFSET_X = 20
const OFFSET_Y = 15


func _ready() -> void:
	Events.connect("call_bounce_start", Callable(self, "bounce_start"))
	Events.connect("call_bounce_stop", Callable(self, "bounce_stop"))
	


func _physics_process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT): ## Click animation
		Input.set_custom_mouse_cursor(cursor_click, Input.CURSOR_ARROW, Vector2(OFFSET_X, OFFSET_Y))
	else: if cursor_hovering == true && anim_timer == true: ## Bounce animation
		bounce_cursor()
		anim_timer = false ## Keeps bounce_cursor() from being called again before finishing
	else: if cursor_hovering == false: ## Sets default cursor
		Input.set_custom_mouse_cursor(cursor_default, Input.CURSOR_ARROW, Vector2(OFFSET_X,OFFSET_Y))
		
func bounce_cursor(): 
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false: ## Passes if LMB is pressed
		Input.set_custom_mouse_cursor(cursor_anim, Input.CURSOR_ARROW, Vector2(OFFSET_X,OFFSET_Y))
		await get_tree().create_timer(0.25).timeout ## 0.25 second timer
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false: ## Passes if LMB is pressed
		Input.set_custom_mouse_cursor(cursor_default, Input.CURSOR_ARROW, Vector2(OFFSET_X,OFFSET_Y))
		await get_tree().create_timer(0.25).timeout ## 0.25 second timer
	anim_timer = true ## Allows bounce_cursor to be ran again in _physics_process
	## "if" loops are separate to prevent jittery anim when LMB is pressed during animation


func bounce_start():
		GlobalCursor.cursor_hovering = true	
		if GlobalCursor.anim_timer == true: ## Checks that bounce_cursor is not already running
			GlobalCursor.bounce_cursor()
		
func bounce_stop():
		GlobalCursor.cursor_hovering = false

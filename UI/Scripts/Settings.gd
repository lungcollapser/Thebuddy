extends Control

func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0, value/5)


func _on_mute_box_toggled(toggled_on):
	AudioServer.set_bus_mute(0, toggled_on)


func _on_resolutions_item_selected(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(960, 720))
		1:
			DisplayServer.window_set_size(Vector2i(800, 600))
		2:
			DisplayServer.window_set_size(Vector2i(640, 480))


func _on_mini_player_pressed():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	DisplayServer.window_set_size(Vector2i(640, 480))
	%MiniPlayer.visible = false
	%Fullscreen.visible = true

func _on_fullscreen_pressed():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	%MiniPlayer.visible = true
	%Fullscreen.visible = false
	
func _on_quit_pressed():
	get_tree().quit()

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

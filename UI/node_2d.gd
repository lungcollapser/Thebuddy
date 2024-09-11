extends BounceCursor

func _on_area_2d_area_entered(): 
	bounce_start()
	

func _on_area_2d_area_exited(): 
	bounce_stop()

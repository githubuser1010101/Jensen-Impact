extends Spatial

func _input(event):
	# Assign the camera node to a variable
	var camera = get_node("Camera")
	
	# Rotate the camera left when A is pressed
	if Input.is_action_pressed("ui_left"):
		camera.rotate_y(.03)
	
	# Rotate the camera right when D is pressed
	if Input.is_action_pressed("ui_right"):
		camera.rotate_y(-.03)
	
	if Input.is_action_pressed("ui_up"):
		camera.rotate_x(.03)
	
	# Rotate the camera right when D is pressed
	if Input.is_action_pressed("ui_down"):
		camera.rotate_x(-.03)



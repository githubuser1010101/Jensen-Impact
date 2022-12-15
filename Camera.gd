extends Camera

# The sensitivity of the mouse
var sensitivity = 0.5

# The speed at which the camera moves
var speed = .01

func _input(event):
	# Check if the event is a mouse motion event
	if event is InputEventMouseMotion:
		# Get the displacement of the mouse in both the x and y directions
		var mouse_displacement = Vector2(event.relative.x, event.relative.y)
		
		# Scale the displacement by the sensitivity and speed
		mouse_displacement = mouse_displacement * sensitivity * speed
		
		# Rotate the camera by the x displacement around the global y axis
		# and by the y displacement around the local x axis
		rotate_y(mouse_displacement.x)
		#rotate_x(mouse_displacement.y) (disabled because epilepsy + clamp not working)



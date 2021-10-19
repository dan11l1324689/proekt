extends KinematicBody2D
 
var vert_move=0

func _physics_process(delta):
	var accel=Vector2()
	accel.x += 1 if Input.is_action_pressed("right") else 0
	accel.x -= 1 if Input.is_action_pressed("left") else 0
	vert_move=-300 if Input.is_action_pressed("fump") else vert_move + 9.6 * delta

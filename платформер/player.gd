extends KinematicBody2D

const Floor = Vector2(0,-1)

var OnAirTime = 0

var accel=Vector2()

var speed = 300

const GRAVETE = Vector2(0,980)

var vert_move=0

func _process(delta):
	accel += GRAVETE * delta
	var target_vel = 0
	target_vel =- int(Input.is_action_pressed("left")) + int(Input.is_action_pressed("right"))
	OnAirTime += delta
	accel = move_and_slide(accel,Floor,25.0)
	if is_on_floor():
		OnAirTime = 0
	var on_floor = OnAirTime < 0.1
	target_vel *= speed
	accel.x = lerp(accel.x,target_vel,0.3)
	#accel.x += speed if Input.is_action_pressed("right") else 0
	#accel.x -= speed if Input.is_action_pressed("left") else 0
	#vert_move=-300 if Input.is_action_pressed("fump") else vert_move + 9.6 * delta
	#accel += GRAVETE
	#accel = move_and_slide(accel+Vector2(0,vert_move),Vector2)
	
	
	
	
	

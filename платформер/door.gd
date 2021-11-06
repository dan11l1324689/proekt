extends Area2D
export var nextlevel:PackedScene
export var keys_needed = 1

func _physics_process(delta):
	var player = $"/root/Globl".palyer
	if player is KinematicBody2D:
		var open = overlaps_body(player) and get_tree().current_scene.key >= keys_needed
		$CollisionShape2D/Label.visible = open  
		if Input.is_action_just_pressed("eus") and open:
			$CollisionShape2D.get_node
			


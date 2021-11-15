extends Area2D
export var nextlevel:PackedScene
export var keys_needed = 3
export var netherkeys_needed = 3
func _physics_process(delta):
	var player = $"/root/Globl".palyer
	if player is KinematicBody2D:
		var open = overlaps_body(player) and get_tree().current_scene.netherkey >= netherkeys_needed and get_tree().current_scene.key >= keys_needed
		$CollisionShape2D/Label.visible = open  
		if Input.is_action_just_pressed("eus") and open:
			get_tree().change_scene_to(nextlevel)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_portal_body_entered(body):
	pass # Replace with function body.

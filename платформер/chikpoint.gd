extends Area2D
var active = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	var player = $"/root/Globl".palyer
	if player is KinematicBody2D and not active:
		active = overlaps_body(player)
		if active:
			$"/root/Globl".chikipoint = PackedScene.new()
			$"/root/Globl".chikipoint.pack(get_tree().current_scene)
			$"/root/Globl".emit_signal("chikipoint_activaited")
			$"/root/Globl".connect("chikipoint_activaited", self,"on_activation_stolen" )
		
	
	$active.visible = active
	$notactive.visible = not active
func on_activation_stolen():
	active = false
	$"/root/Globl".disconnect("chikipoint_activaited",self,"on_activation_stolen")

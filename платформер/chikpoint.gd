extends Area2D
var aktiw = false

func _physics_process(delta):
	var player = $"/root/Globl".player
	if player is KinematicBody2D and not aktiw:
		aktiw = overlaps_body(player)
		if aktiw:
			$"/root/Globl".chekpoint=PackedScene.new()
			$"/root/Globl".chekpoint.pack(get_tree().current_scene)
			$"/root/Globl".emit_signal("chekpoint_activated")
			$"/root/Globl".connect("chekpoint_activated",self,"chekpointOff")
func _ready():
	pass 

func chekpointOff():
	aktiw = false
	$"/root/Globl".disconnect("chekpoint_activated",self,"chekpointOff")


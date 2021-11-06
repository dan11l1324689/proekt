extends Node2D
export var player:NodePath
export var key = 0
func add_keys (amount):
	key += amount 
	if get_node(player):
		get_node(player).get_node("Camera2D/Label").text=str(key)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

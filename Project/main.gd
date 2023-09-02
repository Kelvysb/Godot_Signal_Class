extends Node3D

var ballClass = preload("res://Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_timer_timeout():
	var point = get_tree().get_nodes_in_group("spawn").pick_random() as Node3D
	var ball = ballClass.instantiate() as RigidBody3D
	add_child(ball)
	ball.global_position = point.global_position
	

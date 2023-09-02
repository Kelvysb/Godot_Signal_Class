extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(Vector3(0,0,50))


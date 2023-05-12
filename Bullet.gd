extends RigidBody3D
class_name Bullet

@export var lifetime = 2
@export var SPEED = 15
@export var damage = 10

@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = lifetime
		
func shoot():
	timer.start()
	apply_impulse(global_transform.basis.z * SPEED, global_transform.basis.z)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	queue_free()


func _on_area_3d_body_entered(body):
	if(not body is Gun && not body is Bullet):
		pass
		#queue_free()

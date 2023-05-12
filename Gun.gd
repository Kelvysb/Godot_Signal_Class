extends Node3D
class_name Gun

@export var period = 1

@onready var aim = $Aim
@onready var timer = $Timer
@onready var origin = $Origin
@onready var bullet = preload("res://Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = period	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var instance = bullet.instantiate() as Bullet
	instance.global_position =  origin.position
	instance.global_rotation = origin.rotation
	add_child(instance)	
	instance.shoot()
	
	

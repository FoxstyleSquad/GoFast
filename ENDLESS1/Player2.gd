extends Node2D


onready var ray = $RayCast2D

var grounded = false 
var jumping = false
var gravity = 30
var jump_speed = -600
var max_y_vel = 500
var y_vel = 0
var x_vel = 0
var running = false
var velocity = Vector2()
var speed = 700


func _physics_process(delta):
	if not grounded:
		y_vel = min(max_y_vel, y_vel+ gravity)
	else:
		y_vel = 0
	grounded = false
	
	
	
		
	var run = Input.is_action_pressed("right") 
	running = true 
	x_vel = speed
	position.x += x_vel * delta
		


	var jump = Input.is_action_just_pressed("jump") and not jumping

	if jump:
		jumping = true
		y_vel = jump_speed
	position.y += y_vel * delta


	
	if not jump:
	
		if ray.is_colliding():
			var orig = ray.global_transform.origin
			var coll = ray.get_collision_point()
			var dist = abs(orig.y - coll.y)
			var depth =abs(ray.cast_to.y - dist)
		
			grounded = true
			jumping = false
		
			position.y -=depth

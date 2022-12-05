extends Node2D


onready var ray = $RayCast2D

var grounded = false 
var jumping = false
var gravity = 30
var jump_speed = -600
var max_y_vel = 500
var y_vel = 0




func _physics_process(delta):
	if not grounded:
		y_vel = min(max_y_vel, y_vel+ gravity)
	else:
		y_vel = 0
	grounded = false
	
	
	
	
	

extends Node2D
var speed = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _physics_process(delta):
	for area in $Areas.get_children():
		area.position.x -= speed*delta

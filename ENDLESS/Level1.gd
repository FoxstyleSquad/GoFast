extends Node2D
var speed = 0
var score 
var time


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _physics_process(delta):
	for area in $Areas.get_children():
		area.position.x -= speed*delta

func _on_Area2D_body_entered(body):
	print("toucher")
	get_tree().change_scene("Level2.tscn")




func _on_spikes_body_entered(body: Node) -> void:
	if body is Player:
		body.hit

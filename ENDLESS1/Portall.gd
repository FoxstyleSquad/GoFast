extends Area2D



func _on_Portall_body_entered(body):
	get_tree().change_scene("res://LevelTroll.tscn")

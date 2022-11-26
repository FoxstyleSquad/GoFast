extends Control


func _on_ResumeBtn_pressed():
	self.is_paused = false

func _on_QuitBtn_pressed():
	get_tree().change_scene("res://MainMenu.tscn")

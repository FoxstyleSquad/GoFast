extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused= new_pause_state
		visible=new_pause_state
	


func _on_Button2_pressed():
	get_tree().change_scene("res://MainMenu.tscn")



func _on_Button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	visible=false

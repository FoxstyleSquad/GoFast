extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://MainMenu.tscn")



var music_bus = AudioServer.get_bus_index("Master")
func _on_CheckButton1_button_up():
	
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute((music_bus)))



func _on_CheckButton2_button_up():
	pass # Replace with function body.

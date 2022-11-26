extends Control




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Button_pressed():
	get_tree().change_scene("res://LevelSelector.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://OptionMenu.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://HowToPlay.tscn")


func _on_Button3_pressed():
	get_tree().quit()

var music_bus = AudioServer.get_bus_index("Master")

func _on_TextureButton_pressed():
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute((music_bus)))

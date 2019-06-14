extends Control

var _scenes = {
	"library" : "res://gameScenes/cardLibrary/library.tscn"
	}

func _on_btnLibrary_pressed():
	get_tree().change_scene( _scenes[ "library" ] )

func _on_btnQuit_pressed():
	get_tree().quit()
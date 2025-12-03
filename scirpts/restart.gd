extends Control

func _on_button_pressed():
	Global.started = false
	# Global.score = 0
	get_tree().change_scene_to_file("res://scenes/maingame.tscn")

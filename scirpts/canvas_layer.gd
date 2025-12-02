extends CanvasLayer

@onready var animation_player = $AnimationPlayer

func fade(path: String):
	animation_player.play("fade_out")
	await animation_player.animation_finished
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
	animation_player.play("fade_in")

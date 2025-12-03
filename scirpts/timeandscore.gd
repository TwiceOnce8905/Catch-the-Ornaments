extends Node

@onready var timer = $Timer
var timer_started := false

func _ready():
	$Timer/Label.visible = false
	if Global.started == false:
		Global.score = 0

func _process(delta):
	if Global.started and not timer_started:
		$Timer/Label.visible = true
		timer.start()
		timer_started = true
	$Timer/Label.text = "Time Left: " + str(snapped(timer.time_left, 0))

func _on_timer_timeout():
	print(Global.score)
	Global.started = false
	get_tree().change_scene_to_file("res://scenes/end.tscn")

extends Node

@onready var timer = $Timer
var timer_started := false

func _ready():
	$Timer/Label.visible = false
	$Label.visible = false
	

func _process(delta):
	if Global.started and not timer_started:
		$Timer/Label.visible = true
		$Label.visible = true
		timer.start()
		timer_started = true
	$Timer/Label.text = "⏱️: " + str(snapped(timer.time_left, 0))
	$Label.text = "Ornaments Collected: " + str(Global.score)

func _on_timer_timeout():
	print(Global.score)
	get_tree().quit()

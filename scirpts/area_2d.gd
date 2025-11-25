extends Area2D

@onready var timer = $Timer


func _on_area_entered(_area):
	timer.start()

func _process(_delta):
	if timer.time_left > 0:
		$timermeasurer.text = str(snapped(timer.time_left, 1)) + "seconds until the game ends!"

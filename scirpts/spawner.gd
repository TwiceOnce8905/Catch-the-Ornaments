extends Node2D

# loads ornaments before-hand
var ornaments := [
	preload("res://scenes/redorn.tscn"),
	preload("res://scenes/orangeorn.tscn"),
	preload("res://scenes/yelloworn.tscn"),
	preload("res://scenes/greenorn.tscn"),
	preload("res://scenes/blueorn.tscn"),
	preload("res://scenes/purpleorn.tscn"),
	preload("res://scenes/pinkorn.tscn")
]

# variable for x axis spawning
var min_x := -935
var max_x := 950

# variable for y axis spawning
var min_y := -410
var max_y := -260

func _on_timer_timeout():
	spawn_ornament()

# in the name of the function I don't know why you want to look at this comment anyways hi
func spawn_ornament():
	var ornament_scene = ornaments.pick_random()
	var ornament = ornament_scene.instantiate()
	
	# random spawn posi
	var x_pos = randf_range(min_x, max_x)
	var y_pos = randf_range(min_y, max_y)
	
	ornament.position = Vector2(x_pos, y_pos)
	add_child(ornament)

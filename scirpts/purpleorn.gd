extends Node2D

# falling speed, I mean it's literally in the name so 
var fall_speed := 100

func _physics_process(delta):
	position.y += fall_speed * delta

extends Node2D

# falling speed, I mean it's literally in the name so 
var fall_speed := 500

func _ready():
	connect("area_entered", Callable(self, "_on_area_entered"))

func _on_area_entered(area):
	Global.score += 1
	queue_free()

func _physics_process(delta):
	if not Global.started:
		return
	position.y += fall_speed * delta

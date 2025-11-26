extends Node2D

# falling speed, I mean it's literally in the name so 
var fall_speed := 100

func _ready():
	connect("area_entered", Callable(self, "_on_area_entered"))

func _on_area_entered(area):
	print("player touch (cause you been so out of touch touch touch touch touch) ornament")
	queue_free()

func _physics_process(delta):
	position.y += fall_speed * delta

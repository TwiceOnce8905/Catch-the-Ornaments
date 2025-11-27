extends Control

@export var count_speed: float = 1

@onready var collected = $collected
@onready var _1_star = $"1star"
@onready var _2_star = $"2star"
@onready var _3_star = $"3star"

var current_score = 0

func _ready():
	collected.visible = false
	collected.text = ""
	if Global.score >= 8:
		_1_star.play("default")
	elif Global.score <= 16:
		_2_star.play("default")
	elif Global.score >= 24:
		_3_star.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

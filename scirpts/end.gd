extends Control

@export var count_speed = 0.05

@onready var collected = $collected
@onready var _1_star = $"1star"
@onready var _2_star = $"2star"
@onready var _3_star = $"3star"

var current_score = 0
var score_done: bool = false

func _ready():
	collected.visible = false
	$Button.visible = false
	collected.text = ""
	play_stars_in_order()
	

func play_stars_in_order()-> void :
	var stars_to_play = []
	if Global.score >= 12:
		stars_to_play.append(_1_star)
	if Global.score >= 20:
		stars_to_play.append(_2_star)
	if Global.score >= 25:
		stars_to_play.append(_3_star)
	for star_anim in stars_to_play:
		star_anim.play("default")
		await star_anim.animation_finished
	start_score_count()
	
func start_score_count():
	current_score = 0
	collected.visible = true
	collected.text = "Ornaments Collected: 0"
	count_up_score()
	
	
func count_up_score():
	if Global.score == 0:
			$Button.visible = true
	if current_score < Global.score:
		current_score += 1
		collected.text = "Ornaments Collected: " + str(current_score)
		await get_tree().create_timer(count_speed).timeout
		
		count_up_score()
		
		if current_score >= Global.score:
			score_done = true
	if score_done:
		$Button.visible = true
		
func _on_button_pressed():
	GlobalCanvasLayer.fade("res://scenes/credits.tscn")

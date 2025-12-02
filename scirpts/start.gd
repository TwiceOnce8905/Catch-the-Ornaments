extends Node

@onready var label = $Label
@onready var button = $Label/Button

func _on_button_pressed():
	Global.start_game()
	label.visible = false
	button.visible = false
	$Label2.visible = false
	$Label3.visible = false

extends CharacterBody2D


const SPEED = 1000
const JUMP_VELOCITY = -1000

@onready var catani = $catani

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if is_on_floor():
		if direction == 0:
			catani.play("idle")
		else:
			catani.play("walking")
	
	if direction > 0:
		catani.flip_h = false
	elif direction < 0:
		catani.flip_h = true
		
	if Input.is_action_just_pressed("space") and is_on_floor():
		velocity.y = JUMP_VELOCITY


	move_and_slide()

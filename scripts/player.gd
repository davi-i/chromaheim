extends CharacterBody2D


const SPEED = 300.0

var health = 3

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED

	move_and_slide()

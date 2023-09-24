extends CharacterBody2D


const SPEED = 300.0

var health = 3

@onready var astron_auta = get_parent().get_node("AstronAuta")

func _process(delta):
	pass

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED

	var collision = move_and_collide(velocity * delta)
	if collision and collision.get_collider().name == "AstronAuta":
		astron_auta.player_collided()

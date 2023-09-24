extends CharacterBody2D

var mode = "friend"

const red_astron_auta = preload("res://sprites/red_astron_auta.png")
const blue_astron_auta = preload("res://sprites/blue_astron_auta.png")
const yellow_astron_auta = preload("res://sprites/yellow_astron_auta.png")

@onready var player = get_parent().get_node("Player")

func change_color(color):
	if color == "red":
		mode = "enemy"
		$Sprite2D.texture = red_astron_auta
	elif color == "blue":
		mode = "friend"
		$Sprite2D.texture = blue_astron_auta
	elif color == "yellow":
		mode = "dead"
		$Sprite2D.texture = yellow_astron_auta

func _physics_process(delta):
	if mode == "enemy":
		var motion = Vector2.ZERO
		motion += position.direction_to(player.position)
		
		position += (player.position - position)/50
		
		var collision = move_and_collide(motion)


func player_collided():
	if mode == "enemy":
		player.health - 1
	elif mode == "dead":
		var direction = position.direction_to(player.position).round()
		position += -direction
		

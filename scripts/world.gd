extends Node

var blue_level = preload("res://scenes/blue_world.tscn").instantiate()
var red_level = preload("res://scenes/red_world.tscn").instantiate()


# Called when the node enters the scene tree for the first time.
func _ready():
	blue_level.pressed_button.connect(_on_button_pressed)
	red_level.pressed_button.connect(_on_button_pressed)
	add_child(blue_level)
	move_child(blue_level, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed(color):
	$AstronAuta.change_color(color)
	if color == "red":
		blue_level.queue_free()
		add_child(red_level)
		move_child(red_level, 0)
	

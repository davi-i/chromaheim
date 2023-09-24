extends Node

var blue_level = preload("res://scenes/blue_world.tscn").instantiate()
var red_level = preload("res://scenes/red_world.tscn").instantiate()
var yellow_level = preload("res://scenes/yellow_world.tscn").instantiate()


# Called when the node enters the scene tree for the first time.
func _ready():
	blue_level.pressed_button.connect(_on_button_pressed)
	red_level.pressed_button.connect(_on_button_pressed)
	yellow_level.pressed_button.connect(_on_button_pressed)
	
	blue_level.show_dialog.connect(_on_show_dialog)
	red_level.show_dialog.connect(_on_show_dialog)
	yellow_level.show_dialog.connect(_on_show_dialog)
		
	blue_level.hide_dialog.connect(_on_hide_dialog)
	red_level.hide_dialog.connect(_on_hide_dialog)
	yellow_level.hide_dialog.connect(_on_hide_dialog)
	
	add_child(blue_level)
	move_child(blue_level, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_show_dialog(text):
	$Dialog.show_text(text)
	
func _on_hide_dialog():
	$Dialog.hide_text()

func _on_button_pressed(color):
	$AstronAuta.change_color(color)
	if color == "red":
		blue_level.queue_free()
		add_child(red_level)
		move_child(red_level, 0)
	

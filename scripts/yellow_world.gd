extends "res://scripts/tile_set.gd"

func _on_red_button_body_entered(body):
	pressed_button.emit("red")

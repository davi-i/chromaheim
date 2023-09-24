extends "res://scripts/tile_set.gd"

func _on_red_button_body_entered(body):
	pressed_button.emit("yellow")

func _on_dialog_area_show_dialog(text):
	show_dialog.emit(text)


func _on_dialog_area_hide_dialog():
	hide_dialog.emit()

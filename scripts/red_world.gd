extends "res://scripts/tile_set.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_dialog_area_hide_dialog():
	hide_dialog.emit()


func _on_dialog_area_show_dialog(text):
	show_dialog.emit(text)

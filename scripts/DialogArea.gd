extends Area2D

@export var text: Array[String] = []

signal show_dialog(text: String)
signal hide_dialog

var current = 0
var active = true

func _input(event):
	if active && event.is_action_pressed("ui_accept"):
		show_next()

func show_next():
	if current < text.size():
		show_dialog.emit(text[current])
		current += 1
	else:
		hide_dialog.emit()
		active = false

func _on_body_entered(body):
	print("entered")
	if active:
		show_next()

extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func show_text(text):
	print('show')
	get_tree().paused = true
	$CanvasLayer/Text.text = text
	$CanvasLayer.visible = true

func hide_text():
	print('hide')
	get_tree().paused = false
	$CanvasLayer.visible = false

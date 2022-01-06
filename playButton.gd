extends TextureButton

signal startLoop
signal pauseLoop
var switch = false

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("startLoop",get_node("/root/Game"),"_startLoop")

func _on_playButton_pressed():
	if !switch:
		emit_signal("startLoop")
		switch = true
	else:
		emit_signal("pauseLoop")
		switch = false

func _on_playButton_button_down():
	if !switch:
		$icon.set_frame(5)
	else:
		$icon.set_frame(8)

func _on_playButton_button_up():
	if !switch:
		$icon.set_frame(0)
	else:
		$icon.set_frame(3)

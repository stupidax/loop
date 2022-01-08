extends TextureButton

signal restartLoop


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("restartLoop",get_node("/root/Game"),"_restartLoop")

func _on_playButton_pressed():
	emit_signal("restartLoop")

func _on_playButton_button_down():
	$icon.set_frame($icon.frame + 5)

func _on_playButton_button_up():
	$icon.set_frame($icon.frame - 5)

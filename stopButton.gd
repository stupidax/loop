extends TextureButton

signal stopLoop


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("stopLoop",get_node("/root/Game"),"_stopLoop")

func _on_playButton_pressed():
	emit_signal("stopLoop")
	get_node("/root/Game/loopButton/playButton").switch = false
	get_node("/root/Game/loopButton/playButton/icon").set_frame(0)

func _on_playButton_button_down():
	$icon.set_frame($icon.frame + 5)

func _on_playButton_button_up():
	$icon.set_frame($icon.frame - 5)

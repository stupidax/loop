extends TextureButton

signal addNewAction(type)
var type = ""

func _ready():
	connect("addNewAction",get_node("/root/Game"),"_addNewAction")
	var frameNumber = 0
	match name:
		"time":
			frameNumber = 0
		"train":
			frameNumber = 1
		"wood":
			frameNumber = 2
		"ore":
			frameNumber = 3
	type = name
	$Icon.set_frame(frameNumber)

func _on_ActionButton_pressed():
	emit_signal("addNewAction",type)

func _on_ActionButton_button_down():
	$Icon.set_frame($Icon.frame + 4)

func _on_ActionButton_button_up():
	$Icon.set_frame($Icon.frame - 4)

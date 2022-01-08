extends TextureButton

signal addNewAction(type)
var type = ""

func _ready():
	connect("addNewAction",get_node("/root/Game"),"_addNewAction")
	if name == "time":
		$Icon.set_frame(0)
		type = "time"
	elif name == "wood":
		$Icon.set_frame(2)
		type = "wood"
	elif name == "ore":
		$Icon.set_frame(3)
		type = "ore"
	elif name == "train":
		$Icon.set_frame(1)
		type = "train"

func _on_ActionButton_pressed():
	emit_signal("addNewAction",type)

func _on_ActionButton_button_down():
	$Icon.set_frame($Icon.frame + 4)

func _on_ActionButton_button_up():
	$Icon.set_frame($Icon.frame - 4)

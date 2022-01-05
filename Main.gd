extends Node

export (PackedScene) var ActionButton
export (PackedScene) var ActionBar

var barPosition = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var button = ActionButton.instance()
	add_child(button)
	button.rect_position.x = 192
	button.rect_position.y = 104

func _addNewAction():
	var bar = ActionBar.instance()
	add_child(bar)
	bar.rect_position.x = 400 - 32
	bar.rect_position.y = 0 + barPosition * 16
	barPosition += 1

func _fadeOut():
	barPosition -= 1
	repositionBar()

func repositionBar():
	var barInstance = self.get_children()
	for i in barInstance:
		if i.name == "bar":
			i.rect_position.y -= 16

#func _process(delta):
#	pass

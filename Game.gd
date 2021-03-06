extends Node

export (PackedScene) var ActionButton
export (PackedScene) var ActionBar
export (PackedScene) var Player

var barActionTypeNumber = 0
var actionNumber = 0
var maxAction = 1

func _ready():
	initButtonAction(206,104,"time")
	initButtonAction(94,104,"wood")
	initButtonAction(192,70,"ore")
	initButtonAction(180,154,"train")
	initPlayer()

func _addNewAction(actionType):
	print(barActionTypeNumber)
	var lastChild = get_child(get_child_count()-1)
	if barActionTypeNumber > 0 && actionType == lastChild.type:
		lastChild.addSameAction()
		actionNumber += 1
	else:
		var bar = ActionBar.instance()
		bar.rect_position.x = 368
		bar.rect_position.y = barActionTypeNumber * 16
		barActionTypeNumber += 1
		actionNumber += 1
		bar.type = actionType
		add_child(bar)

func initButtonAction(x,y,actionType):
	var button = ActionButton.instance()
	button.name = actionType
	button.rect_position.x = x
	button.rect_position.y = y
	add_child(button)

func initPlayer():
	var player = Player.instance()
	player.position.x = 194
	player.position.y = 106
	add_child(player)

func _startLoop():
	if actionNumber > 0:
		$ActionBar.loopStarted = true

func _speedLoop():
	# TODO
	pass
	
func _restartLoop():
	# TODO
	pass

func _stopLoop():
	pass

#func get_last_actionBar():
#	var allChild = get_children()
#	print(allChild)
#	for _i in allChild:
#		print(_i)
#	var allChildType = []
#	for i in allChild:
#		print(i.name.begins_with("ActionBar"))
#		if i.name.begins_with("ActionBar"):
#			allChildType.push_back(i.get_path())
#		return get_node(allChildType[allChildType.size()])


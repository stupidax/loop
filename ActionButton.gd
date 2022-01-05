extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal addNewAction

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("addNewAction",get_node("/root/Main"),"_addNewAction")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ActionButton_pressed():
	emit_signal("addNewAction")

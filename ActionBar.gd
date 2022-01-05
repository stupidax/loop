extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 100
signal fadeOut

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("fadeOut",get_node("/root/Main"),"_fadeOut")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.value += speed * delta
	if value >= 100:
		emit_signal("fadeOut")
		queue_free()


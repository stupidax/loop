extends TextureProgress

var speed = 100
var loopStarted = false
var sameActionNumber = 0
var type = ""

func _ready():
	if sameActionNumber == 0:
		sameActionNumber += 1
	$actionNumber.text = "x" + str(sameActionNumber)
	# this logic should be extracted as it is also used in ActionButton.gd
	var frameNumber = 0
	match type:
		"time":
			frameNumber = 0
		"train":
			frameNumber = 1
		"wood":
			frameNumber = 2
		"ore":
			frameNumber = 3
	$Icon.set_frame(frameNumber)

func _process(delta):
	if loopStarted && value < 100:
		self.value += speed * delta

func addSameAction():
	sameActionNumber += 1
	$actionNumber.text = "x" + str(sameActionNumber)


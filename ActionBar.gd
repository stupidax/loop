extends TextureProgress

var speed = 100
var loopStarted = false
var sameActionNumber = 0
var type = ""

func _ready():
	if sameActionNumber == 0:
		sameActionNumber += 1
	$actionNumber.text = "x" + str(sameActionNumber)
	if type == "time":
		$Icon.set_frame(0)
	elif type == "wood":
		$Icon.set_frame(2)
	elif type == "ore":
		$Icon.set_frame(3)
	elif type == "train":
		$Icon.set_frame(1)

func _process(delta):
	if loopStarted && value < 100:
		self.value += speed * delta

func addSameAction():
	sameActionNumber += 1
	$actionNumber.text = "x" + str(sameActionNumber)


extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.value = int(Globals.step_delay)


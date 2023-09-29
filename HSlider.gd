extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.value = int(Globals.grid_size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = str(Globals.grid_size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_grid_size_slider_value_changed(value: float) -> void:
	self.text = "Grid Size: " + str(value)

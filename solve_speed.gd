extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = "wait between: " + str(Globals.step_delay)
	

func _on_solve_speed_slider_value_changed(value: float) -> void:
	self.text = "wait between: " + str(value)

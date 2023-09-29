extends Node2D

var hud_enabled = true
const maze = preload("res://tile_map.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#func on_fringe_changed():
	$CanvasLayer/spots_visited_column.text = "\n".join(Globals.letters_to_show)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("show_hud"):
		hud_enabled = not hud_enabled
		$"CanvasLayer".set_visible(hud_enabled)

	if Input.is_action_just_pressed("reset"):
		var new_maze = maze.instantiate()
		var existing_maze = get_children().filter(func(x):
			return "TileMap" in x.name)[0]
		existing_maze.queue_free()
		add_child(new_maze)
	
	$CanvasLayer/spots_visited_column.text = "\n".join(Globals.letters_to_show)
	


func _on_grid_size_slider_value_changed(value: float) -> void:
	Globals.grid_size = value


func _on_solve_speed_slider_value_changed(value: float) -> void:
	Globals.step_delay = value


func _on_allow_loops_toggled(button_pressed: bool) -> void:
	Globals.allow_loops = button_pressed


func _on_show_labels_toggled(button_pressed: bool) -> void:
	Globals.show_labels = button_pressed
	$CanvasLayer/spots_visited_column.set_visible(button_pressed)

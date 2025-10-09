extends Control

func _on_to_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _enter_tree() -> void:
	$Deathsbyboundariesvar.text = ": %s" %[str(Autoload.deathsByBoundaries)]
	$Deathsbyspikesvar.text = ": %s" %[str(Autoload.deathsBySpikes)]
	$Scorevar.text = ": %s" %[str(Autoload.score)]

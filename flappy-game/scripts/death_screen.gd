extends Control

func _on_to_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _enter_tree() -> void:
	$Deathsbyboundaries.text = "deaths by boundaries: %s" %[str(Autoload.deathsByBoundaries)]
	$Deathsbyspikes.text = "deaths by spikes: %s" %[str(Autoload.deathsBySpikes)]
	$Score.text = "score: %s" %[str(Autoload.score)]

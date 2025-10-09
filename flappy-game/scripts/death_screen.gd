extends Control

func _on_to_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _enter_tree() -> void:
	$Deathsbyboundaries.text = "deaths by boundaries: " + str(Autoload.deathsByBoundaries)
	$Deathsbyspikes.text = "deaths by spikes: " + str(Autoload.deathsBySpikes)

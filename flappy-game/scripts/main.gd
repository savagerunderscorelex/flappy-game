extends Node2D

@onready var spikes : PackedScene = preload("res://screens/cave_spikes.tscn")

func _on_timer_timeout() -> void:
	var spikesInstance = spikes.instantiate()
	spikesInstance.position.x = 1152
	spikesInstance.position.y = randi_range(100, 400)
	add_child(spikesInstance)
	$Timer.start()

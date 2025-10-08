extends Node2D

@onready var spikes : PackedScene = preload("res://scenes/cave_spikes.tscn")

func _ready() -> void:
	Autoload.score = 0

func _process(delta: float) -> void:
	$CanvasLayer/Control/Label.text = str(Autoload.score)

func _on_timer_timeout() -> void:
	var spikesInstance = spikes.instantiate()
	spikesInstance.position.x = 1152
	spikesInstance.position.y = randi_range(100, 400)
	add_child(spikesInstance)
	$Timer.start()


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()

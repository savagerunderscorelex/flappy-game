extends Node2D

var speed : float = 250

func _physics_process(delta: float) -> void:
	position.x -= speed * delta


func _on_area_2d_body_entered(_body: Node2D) -> void:
	get_tree().reload_current_scene()

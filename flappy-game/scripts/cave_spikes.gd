extends Node2D

var speed : float = 250
var speedTwo : float = 325
func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	



func _on_area_2d_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/death_screen.tscn")
	Autoload.deathsBySpikes += 1


func _on_score_body_entered(body: Node2D) -> void:
	Autoload.score += 1
	

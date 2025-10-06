extends CharacterBody2D
# Hey this is a comment, like python

# Animation Code
@onready var animator = $AnimatedSprite2D

var gravity : float = 981
var jumpForce : float = 400

func _physics_process(delta: float) -> void:
	animator.play("flying")
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump!jump!"):
		velocity.y = -jumpForce # According to the tutorial I followed to do the 
		#jump thing, -() = positive in godot scripting, so this goes up when the 
		#scene is clicked/the spacebar is pressed. 
	move_and_slide()
	

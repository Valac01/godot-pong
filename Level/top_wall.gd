extends StaticBody2D

var velocity = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var collision_obj = move_and_collide(velocity * delta)

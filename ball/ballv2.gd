extends StaticBody2D

const speed = 300.0
var velocity = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x = Input.get_axis("ui_left", "ui_right")
	velocity.y = Input.get_axis("ui_up", "ui_down")
	
	move_and_collide(velocity * speed * delta)
	

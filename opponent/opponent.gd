extends StaticBody2D

const SPEED = 200.0
var ball
var velocity = Vector2.ZERO

func _ready():
	ball = get_parent().find_child("ball")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if ball:
		process_opponent_direction()
	
	move_and_collide(velocity * SPEED * delta)

func process_opponent_direction():
	if absi(ball.position.y - position.y) > 100:
		if ball.position.y > position.y:
			velocity.y = 1
		else:
			velocity.y = -1
	else:
		velocity.y = 0

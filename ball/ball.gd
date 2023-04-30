extends CharacterBody2D

const SPEED = 500.0
var speed = SPEED

# Called when the node enters the scene tree for the first time.
func _ready():
	setup_ball()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var collision_obj = move_and_collide(velocity * speed * delta)
	if collision_obj:
		$collision_sound.play()
		velocity = velocity.bounce(collision_obj.get_normal())

func stop_ball():
	speed = 0

func setup_ball():
	speed = SPEED
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-1, 1][randi() % 2]

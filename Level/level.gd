extends Node2D

var player_score = 0
var opponent_score = 0
const PLAYER_POS = Vector2(64, 360)
const OPPONENT_POS = Vector2(1280-64, 360)

func _on_left_wall_body_entered(body):
	print("Left: ", body.name)
	opponent_score += 1
	reset()

func _on_right_wall_body_entered(body):
	print("Right: ", body.name)
	player_score += 1
	reset()

func _on_timer_timeout():
	$timer_label.visible = false
	$ball.setup_ball()

func _process(_delta):
	$player_score.text = str(player_score)
	$opponent_score.text = str(opponent_score)
	$timer_label.text = str(int($Timer.time_left))

func _ready():
	set_paddles()

func reset():
	$score_sound.play()
	$ball.position = Vector2(640, 360)
	$timer_label.visible = true
	$Timer.start()
	$ball.stop_ball()
	set_paddles()

func set_paddles():
	$player.position = PLAYER_POS
	$player.velocity = Vector2.ZERO
	$opponent.position = OPPONENT_POS
	$opponent.velocity = Vector2.ZERO
	

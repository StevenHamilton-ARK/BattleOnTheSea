class_name Player extends CharacterBody2D

@export var speed = 300

@onready var cooldown_timer = $Cooldown

var cannonball_scene = preload("res://Projectiles/cannon_ball.tscn")

@onready var cannon = $Cannon

signal spawn_ball(location)


func _process(delta: float):
	if Input.is_action_pressed("shoot") and cooldown_timer.is_stopped():
		shoot()

func get_input():
	var input_direction = Input.get_vector("left","right","down","up")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func shoot():
	emit_signal("spawn_ball",cannon.global_position)
	cooldown_timer.start()
	
func die():
	queue_free()

extends Node2D

var cannonball = preload("res://Projectiles/cannon_ball.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_ship_spawn_ball(location) -> void:
	var c = cannonball.instantiate()
	c.global_position = location
	add_child(c)

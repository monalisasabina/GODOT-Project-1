extends Node2D

var speed = 200 # pixels per second

func _ready():
	print("Hello Godot!")
	
func _process(delta):
	$Sprite2D.position.y += speed * delta

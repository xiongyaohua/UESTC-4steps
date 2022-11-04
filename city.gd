extends Node2D

var Arrow = preload("res://Scenes/arrow.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(10):
		var arrow = Arrow.instantiate()
		arrow.position.y += i*30
		add_child(arrow)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

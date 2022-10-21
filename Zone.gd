@tool
extends Node2D

@export var generation: float:
	set(value):
		generation = value
		$LabelGeneration.text = str(generation)
		
@export var attraction: float:
	set(value):
		attraction = value
		$LabelAttraction.text = str(attraction)

@export var color: Color:
	set(value):
		color = value
		$Boundary.color = value
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

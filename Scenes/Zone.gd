@tool
extends Node2D

@export var generation: float:
	set(value):
		generation = value
		$LabelGeneration.text = str(value)
@export var attraction: float:
	set(value):
		attraction = value
		$LabelAttraction.text = str(value)
@export var color: Color:
	set(value):
		color = value
		$Boundary.color = value
	
@export var population: float:
	set(value):
		population = value
		caculate_demand()
		
@export var jobs: float:
	set(value):
		jobs = value
		caculate_demand()

@export var landuse: LandUse:
	set(value):
		landuse = value
		color = value.color
		caculate_demand()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func caculate_demand():
	generation = population * landuse.generation_ratio
	attraction = jobs * landuse.attraction_ratio

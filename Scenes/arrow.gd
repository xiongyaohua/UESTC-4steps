@tool
extends Line2D


# Called when the node enters the scene tree for the first time.
func _ready():
	sync_path()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func sync_path():
	points = $Path2D.curve.get_baked_points()

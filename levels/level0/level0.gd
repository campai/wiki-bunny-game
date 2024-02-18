extends Node2D

var speed:int = 400;
var bunny_size:Vector2;
var bunny_scale:float;


# Called when the node enters the scene tree for the first time.
func _ready():
	bunny_size = Vector2($Bunny/Image.texture.get_width(), $Bunny/Image.texture.get_height());
	$Bunny.position = Vector2(100, 100);
	bunny_scale = $Bunny.scale.x; # both x & y are the same

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):		


	if (Input.is_action_pressed("quit")):
		get_tree().quit(0);


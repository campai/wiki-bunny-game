extends Node2D

var speed:int = 400;
var bunny_size:Vector2;
var bunny_scale:float;


# Called when the node enters the scene tree for the first time.
func _ready():
	bunny_size = Vector2($Bunny.texture.get_width(), $Bunny.texture.get_height());
	$Bunny.position = Vector2(100, 100);
	bunny_scale = $Bunny.scale.x; # both x & y are the same

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):		
	if (Input.is_action_pressed("left")):
		if $Bunny.position.x - bunny_size.x/2 * bunny_scale < 0:
			$Bunny/hrup.play();	
		else:	
			$Bunny.position.x -= speed * delta;
	
	if (Input.is_action_pressed("right")):
		if $Bunny.position.x + bunny_size.x/2 * bunny_scale > get_viewport_rect().size.x:
			$Bunny/hrup.play();
		else:
			$Bunny.position.x += speed * delta;
	
	if (Input.is_action_pressed("up")):
		if $Bunny.position.y - bunny_size.x/2 * bunny_scale < 0:
			$Bunny/hrup.play();
		else:
			$Bunny.position.y -= speed * delta;
	
	if (Input.is_action_pressed("down")):
		if $Bunny.position.y + bunny_size.y/2 * bunny_scale > get_viewport_rect().size.y:
			$Bunny/hrup.play();
		else:
			$Bunny.position.y += speed * delta;

	if (Input.is_action_pressed("quit")):
		get_tree().quit(0);


extends TileMapLayer

var tiless
var map

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	_setTiles()
#	
	 
	# Called every time the node is added to the scene.
	# Initialization here
	pass
func _setTiles():
	randomize()
	map= get_node("Background")
	# width and height in tiles 
	# Tiles = number of different tiles in tile set
	
	var width = 15
	var height = 12
	var n_tiles = 25
	for j in range(height):
		for k in range(width):
			tiless = randi()% n_tiles

			
			 		
			map.set_(k,j,tiless)	
		  
	pass	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

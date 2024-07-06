extends Button

const rapidez = 60
var velocidad: Vector2 = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "Clickeame"
	self.pressed.connect(self.me_clickearon)

func me_clickearon():
	if(velocidad.is_zero_approx()):
		velocidad = Vector2.LEFT * rapidez
	elif(velocidad.x > 0):
		velocidad = Vector2.LEFT * rapidez
	elif(velocidad.x < 0):
		velocidad = Vector2.RIGHT * rapidez
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position += delta * velocidad

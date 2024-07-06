@tool
extends TextureRect

@export var dokimon: Dokimon

func _get_configuration_warnings():
	if(not dokimon):
		return ["Che, no conectaste al chobi"]

# Called when the node enters the scene tree for the first time.
func _ready():
	dokimon.mori.connect(func():
		self.salir_volando()
	)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func salir_volando():
	var tween = create_tween().set_parallel(true)
	create_tween().tween_property(
		self,
		"position",
		Vector2(1000, -1000),
		5.0
	).set_trans(Tween.TRANS_CUBIC)
	create_tween().tween_property(
		self,
		"rotation",
		PI * 10.0,
		1.5
	).set_trans(Tween.TRANS_CUBIC)
	create_tween().tween_property(
		self,
		"scale",
		Vector2(3, 3),
		1.5
	).set_trans(Tween.TRANS_CUBIC)

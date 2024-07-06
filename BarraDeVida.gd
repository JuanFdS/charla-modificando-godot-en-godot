@tool
extends TextureProgressBar

@export var dokimon: Dokimon

func _ready():
	max_value = dokimon.salud_maxima

func _process(delta):
	value = dokimon.salud

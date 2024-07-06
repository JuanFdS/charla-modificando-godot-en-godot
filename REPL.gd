@tool
extends Control

@onready var text_edit: TextEdit = %TextEdit
@onready var button: Button = %Button

func _ready():
	button.pressed.connect(self.evaluar)
	
func evaluar():
	var code = text_edit.text
	var expression = Expression.new()
	expression.parse(code)
	var resultado = expression.execute([], self)
	text_edit.text = str(resultado)


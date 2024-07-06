@tool
extends EditorPlugin

const OTRO_JUEGUITO = preload("res://OtroJueguito.tscn")

var jueguito

func _enter_tree():
	jueguito = OTRO_JUEGUITO.instantiate()
	self.add_control_to_bottom_panel(
		jueguito,
		"Dokimon"
	)


func _exit_tree():
	remove_control_from_bottom_panel(jueguito)
	jueguito.queue_free()


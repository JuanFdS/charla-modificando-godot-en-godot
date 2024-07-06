@tool
extends EditorPlugin

const REPL = preload("res://REPL.tscn")
var repl

func _enter_tree():
	repl = REPL.instantiate()
	add_control_to_bottom_panel(repl, "REPL")


func _exit_tree():
	remove_control_from_bottom_panel(repl)
	repl.queue_free()

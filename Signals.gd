extends Node


signal from_signals


func on_from_button():
	emit_signal("from_signals")

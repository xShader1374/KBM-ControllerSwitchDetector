@tool
extends EditorPlugin

func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_autoload_singleton("KeyboardAndMouseOrControllerSwitchDetector", "res://addons/kbm-controller_switch_detector/KBM-ControllerSwitchDetector.gd")

func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_autoload_singleton("KeyboardAndMouseOrControllerSwitchDetector")

@icon("res://addons/kbm-controller_switch_detector/KBM-Controller_Switch_Detector.svg")
extends Node
class_name KBM_ControllerSwitchDetector

## This node runs in a subthread so it doesn't influence performance and 
## it's capable of detecting if the Input is coming from the Keyboard And mouse or Controller,
## and it's capable of detecting what type of controller was detected.
## To access the "keyboardOrController" variable or the "controllerType" variable,
## you can just write KBM_ControllerSwitchDetector.keyboardOrController
## or keyboardOrController.controllerType

## True if keyboard is being used, false if Controller is being used
static var keyboardOrController : bool = true

## "Undetected" if its not being recognized
static var controllerType : String = "Undetected"

func _ready() -> void:
	process_thread_group = PROCESS_THREAD_GROUP_SUB_THREAD
	process_thread_messages = FLAG_PROCESS_THREAD_MESSAGES

func _input(event: InputEvent) -> void:
	# You could check for InputEventMouseMotion too but it tends to be inaccurate
	if event is InputEventMouseButton or event is InputEventKey:
		keyboardOrController = true
	# You could check for InputEventJoyPadMotion too but it tends to be inaccurate
	elif event is InputEventJoypadButton:
		keyboardOrController = false
		
		var joyName : String = Input.get_joy_name(0)
		
		var isXbox : bool = joyName.contains("Xbox")
		var isXboxXInput : bool = joyName.contains("XInput")
		var isPlayStationDualShock : bool = joyName.contains("DualShock")
		var isPlayStationController : bool = joyName.contains("PS")
		var isNintendoController : bool = joyName.contains("Nintendo")
		var isNintendoSwitchController : bool = joyName.contains("Switch")
		var isSteamGamepad : bool = joyName.contains("Steam")
		
		if isXbox or isXboxXInput:
			controllerType = "Xbox"
		elif isPlayStationDualShock or isPlayStationController:
			controllerType = "PlayStation"
		elif isNintendoController or isNintendoSwitchController:
			controllerType = "Nintendo"
		elif isSteamGamepad:
			controllerType = "Steam"
		else:
			controllerType = "Undetected"

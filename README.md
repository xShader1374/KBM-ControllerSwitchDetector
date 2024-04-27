# KBM-ControllerSwitchDetector
Godot 4.1+ Addon which detects if player is using controller or the Mouse And Keyboard input method. 

![KBM-ControllerSwitchDetector-Logo](https://github.com/xShader1374/KBM-ControllerSwitchDetector/blob/main/addons/kbm-controller_switch_detector/KBM-Controller_Switch_Detector.svg?raw=true)

Description:
This plugin can detect if input is coming from Keyboard And Mouse or Controller, and can detect what type of controller is being used (Xbox, PlayStation, Nintendo, Steam), it uses a simple autoload so you don't have to do anything else other than just using it!
Usage:
1) When you have to check if the user is currently using a gamepad or a keyboard you can just use: "KBM_ControllerSwitchDetector.keyboardOrController" (true if Keyboard is being used, false if Controller is currently being used)
2) When you have to get the controller type, use: "KBM_ControllerSwitchDetector.controllerType"

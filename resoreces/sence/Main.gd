extends Node2D
func _physics_process(delta):
	if Input.action_press("ui_cancel"):
		$player/KinematicBody2D/Control.show()

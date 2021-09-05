extends Button

onready var  some = get_node("../Control2/")

func _on_Button2_pressed():
	print("HI")
	$"../ColorRect/AnimationPlayer".play("blur")
	some.show()


func _on_CheckButton_pressed():
	OS.window_fullscreen = !OS.window_fullscreen

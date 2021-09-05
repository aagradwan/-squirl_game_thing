extends Button

onready var  some = get_node("../Control2/")
func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_Button3_pressed():
	get_tree().quit()


func _on_Exit_Button_pressed():
	some.hide()
	$"../ColorRect/AnimationPlayer".play_backwards("blur")

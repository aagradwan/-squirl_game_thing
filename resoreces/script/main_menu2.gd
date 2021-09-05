extends Control



func _on_Button3_pressed():
	get_tree().quit()


func _on_Buttn2_pressed():
	$AnimationPlayer.play("blur")


func _on_Buttn_pressed():
	get_tree().change_scene("res://resoreces/sence/Main.tscn")


func _on_Button_pressed():
	$AnimationPlayer.play_backwards("blur")


func _on_CheckButton_pressed():
	OS.window_fullscreen = !OS.window_fullscreen


func _on_wind_value_changed(value):
	$AudioStreamPlayer.volume_db =value


func _on_sunds_value_changed(value):
	$AudioStreamPlayer2.volume_db =value

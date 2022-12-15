extends Control


func _on_Button_pressed():
	$AcceptDialog.popup_centered()


func _on_AcceptDialog_confirmed():
	get_tree().change_scene("res://Act II Scene I.tscn")

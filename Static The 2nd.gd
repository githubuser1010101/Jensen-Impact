extends StaticBody2D

#------------------------------------------------
#Variables

var fcounter = 0
var questionpassed1 = false
var questionpassed2 = false

#------------------------------------------------

#functions

func _on_TextEdit_text_changed():
	if $TextEdit.text == "21":
		$FallStopper.disabled = true
		$RichTextLabel2.text = "good job now get out of here"
		questionpassed1 = true
	else:
		$RichTextLabel2.text = "wrong"

var _titles = [ "Time tag!", "It's Ryn o' clock", "What's wrong? Tell me. NOW.", " The hit game on the Google play store!", "#imsooriginal             "]

func _ready():
	randomize()

	for _i in range(100):
		OS.set_window_title(get_title())
	OS.alert("The game started. I just thought you'd like to know.", "This is an important message! I think.")


func get_title():
	var random_title = _titles[randi() % _titles.size()]
	return "Jensen Impact: " + random_title

func _input(event):
	if event.is_action_pressed("ui_focus_next"):
		fcounter = fcounter + 1
		if fcounter > 19:
			if questionpassed2 != false:
				get_tree().change_scene("res://Act I Scene II.tscn")

func _process(delta):
	if questionpassed1 != false:
		questionpassed2 = true

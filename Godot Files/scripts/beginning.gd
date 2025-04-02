extends Node2D

var messages = [
	"1 white candle, 6 diamond shards, 9 floral petals, and 3 sweet treats",
	"I...",
	"..I can't remember",
	"Who am I?",
	"What happened to me?",
	"My.. My laptop.. I need to know..",
	"know what happened to me..",
	"At V.E.N.U.S ."
]



var typing_speed = .1
var read_time = 2

var current_message = 0
var display = ""
var current_char = 0

func _on_Dialogue_ready():

	start_dialogue()
	
func start_dialogue():
	current_message = 0
	display = ""
	current_char = 0
	
	$next_char.set_wait_time(typing_speed)
	$next_char.start()

func stop_dialogue():
	# get_parent().remove_child(self)
	$AnimationPlayer.play("fadeToBlack")
	yield(get_tree().create_timer(1.5), "timeout")
	get_tree().change_scene("res://scenes/password.tscn")

func _on_next_char_timeout():
	if (current_char < len(messages[current_message])):
		var next_char = messages[current_message][current_char]
		display += next_char
		
		$Label.text = display
		current_char += 1
		$keyboard.play()
	else:
		$next_char.stop()
		$next_message.one_shot = true
		$next_message.set_wait_time(read_time)
		$next_message.start()

func _on_next_message_timeout():
	if (current_message == len(messages) - 1):
		stop_dialogue()
	else: 
		current_message += 1
		display = ""
		current_char = 0
		$next_char.start()
		




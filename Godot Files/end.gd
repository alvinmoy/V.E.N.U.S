extends Node2D

var messages = [
	"Love",
	"Beauty",
	"Desire",
	"...",
	"Toxicity",
	"Inhabitable",
	"Death",
	"...",
	"They are truly two sides of the same coin.",
	"Is this truly what i'm supposed to believe?",
	"Venus"
]

var typing_speed = .1
var read_time = 1.5

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
	get_tree().quit()
	

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
		


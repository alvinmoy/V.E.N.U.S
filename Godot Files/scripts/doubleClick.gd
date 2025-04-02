extends TextureButton

signal double_click
var double_speed:int = 1000*0.25
var last_click: = 0.0


func _ready()->void:
	connect("pressed",self, "on_pressed")
	connect("double_click", self, "on_double_click")

func double_click_detect()->bool:
	var new_click: = OS.get_ticks_msec()
	if new_click - last_click <= double_speed:
		return true
	last_click = new_click
	return false
	
func on_pressed()->void:
	if double_click_detect():
		emit_signal("double_click")


extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_TextureButton_mouse_entered():
	$gray.visible = true


func _on_TextureButton_mouse_exited():
	$gray.visible = false


func _on_TextureButton_pressed():
	get_tree().change_scene("res://scenes/beginning.tscn")

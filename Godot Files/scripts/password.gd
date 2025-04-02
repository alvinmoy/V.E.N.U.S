extends Control

var codes := ["1693","1 6 9 3"]


func _on_LineEdit_text_entered(password):
	if !password in codes:
		$errorSFX.play()
		$LineEdit.clear()
		return
		
	$LineEdit.clear()
	get_tree().change_scene("res://scenes/laptop.tscn")



func _on_password_ready():
	$AnimationPlayer.play("fadeToNormal")

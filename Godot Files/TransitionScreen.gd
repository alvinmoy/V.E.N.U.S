extends CanvasLayer

signal transitioned

func transition():
	$AnimationPlayer.play("fadeToBlack")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fadeToBlack":
		print("Emit signal Transitioned")
		emit_signal("transiitoned")
		$AnimationPlayer.play("fadeToNormal")
	if anim_name == "fadeToNormal":
		print("Finished Fading")

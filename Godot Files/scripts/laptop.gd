extends Control

var codes := ["09231205","923125"]

func _on_folderPass_text_entered(password):
	if !password in codes:
		$errorSFX/.play()
		$passWindow/folderPass.clear()
		return
		
	$passWindow/folderPass.clear()
	$completeSFX.play()
	$passWindow.visible = false
	$Folder.visible = false
	$Folder2.visible = true
	
var codes2 := ["0915"]

func _on_recylePass_text_entered(password):
	if !password in codes2:
		$errorSFX.play()
		$recylePassWindow/recylePass.clear()
		return
	
	$trashSFX.play()
	$recylePassWindow/recylePass.clear()
	$recylePassWindow.visible = false
	$recycleWindow/beforeRecyclePass.visible = true
	yield(get_tree().create_timer(0.1), "timeout")
	$recycleWindow/beforeRecyclePass/Photo.visible = true
	yield(get_tree().create_timer(0.5), "timeout")
	$recycleWindow/beforeRecyclePass/Photo2.visible = true
	yield(get_tree().create_timer(0.3), "timeout")
	$recycleWindow/beforeRecyclePass/Stikcky.visible = true
	$recycleWindow/beforeRecyclePass/Venus.visible = true

func _on_exitChatter_pressed():
	$clickSFX.play()
	$chatterWindow.visible = false
	
func _on_exitNotes_pressed():
	$clickSFX.play()
	$notesWindow.visible = false

func _on_exitPass_pressed():
	$clickSFX.play()
	$passWindow.visible = false
	
func _on_exitFolder_pressed():
	$clickSFX.play()
	$folderWindow.visible = false
	
func _on_exitPic1_pressed():
	$clickSFX.play()
	$pic1Window.visible = false
	
func _on_exitPic2_pressed():
	$clickSFX.play()
	$pic2Window.visible = false
	
func _on_exitPic3_pressed():
	$clickSFX.play()
	$pic3Window.visible = false
	
func _on_exitThought_pressed():
	$clickSFX.play()
	$poemWindow.visible = false
	
func _on_exitRecylePass_pressed():
	$clickSFX.play()
	$recylePassWindow.visible = false

func _on_exitRecycle_pressed():
	$clickSFX.play()
	$recycleWindow.visible = false
	
func _on_exitVENUS_pressed():
	$clickSFX.play()
	$venusWindow.visible = false
	
func _on_exitVenusVenus_pressed():
	$clickSFX.play()
	$venusvenusWindow.visible = false
	
func _on_exitOffering_pressed():
	$clickSFX.play()
	$offeringWindow.visible = false
	
func _on_exitVirus_pressed():
	$clickSFX.play()
	$virusWindow.visible = false
	$windSFX.stop()
	
	if $virusWindow/afterPassword.visible == true:
		get_tree().change_scene("res://scenes/end.tscn")


func _on_momButton_pressed():
	$clickSFX.play()
	$chatterWindow/momChat.visible = true
	$chatterWindow/jeremyChat.visible = false
	$chatterWindow/tinaChat.visible = false
	$chatterWindow/user314Chat.visible = false
	$chatterWindow/dadChat.visible = false
	$chatterWindow/user618Chat.visible = false
	$chatterWindow/tiffanyChat.visible = false

func _on_jeremyButton_pressed():
	$clickSFX.play()
	$chatterWindow/jeremyChat.visible = true
	$chatterWindow/momChat.visible = false
	$chatterWindow/tinaChat.visible = false
	$chatterWindow/user314Chat.visible = false
	$chatterWindow/dadChat.visible = false
	$chatterWindow/user618Chat.visible = false
	$chatterWindow/tiffanyChat.visible = false

func _on_tinaButton_pressed():
	$clickSFX.play()
	$chatterWindow/tinaChat.visible = true
	$chatterWindow/jeremyChat.visible = false
	$chatterWindow/momChat.visible = false
	$chatterWindow/user314Chat.visible = false
	$chatterWindow/dadChat.visible = false
	$chatterWindow/user618Chat.visible = false
	$chatterWindow/tiffanyChat.visible = false

func _on_user314Button_pressed():
	$clickSFX.play()
	$chatterWindow/user314Chat.visible = true
	$chatterWindow/tinaChat.visible = false
	$chatterWindow/jeremyChat.visible = false
	$chatterWindow/momChat.visible = false
	$chatterWindow/dadChat.visible = false
	$chatterWindow/user618Chat.visible = false
	$chatterWindow/tiffanyChat.visible = false

func _on_dadButton_pressed():
	$clickSFX.play()
	$chatterWindow/dadChat.visible = true
	$chatterWindow/user314Chat.visible = false
	$chatterWindow/tinaChat.visible = false
	$chatterWindow/jeremyChat.visible = false
	$chatterWindow/momChat.visible = false
	$chatterWindow/user618Chat.visible = false
	$chatterWindow/tiffanyChat.visible = false
	
func _on_user618Button_pressed():
	$clickSFX.play()
	$chatterWindow/user618Chat.visible = true
	$chatterWindow/dadChat.visible = false
	$chatterWindow/user314Chat.visible = false
	$chatterWindow/tinaChat.visible = false
	$chatterWindow/jeremyChat.visible = false
	$chatterWindow/momChat.visible = false
	$chatterWindow/tiffanyChat.visible = false
	
func _on_Tiffany_pressed():
	$clickSFX.play()
	$chatterWindow/tiffanyChat.visible = true
	$chatterWindow/user618Chat.visible = false
	$chatterWindow/dadChat.visible = false
	$chatterWindow/user314Chat.visible = false
	$chatterWindow/tinaChat.visible = false
	$chatterWindow/jeremyChat.visible = false
	$chatterWindow/momChat.visible = false


func _on_loginButton_pressed():
	if $virusWindow/beforePassword/emailText.text == "photogirl221@gmail.com" && $virusWindow/beforePassword/passText.text == "127751939":
		$doubleClickSFX.play()
		$virusWindow/afterPassword.visible = true;
		$virusWindow/beforePassword.visible = false;
		yield(get_tree().create_timer(90), "timeout")
		$virusWindow/afterPassword/ScrollContainer/VBoxContainer/Label2/adminColor.color = Color(0,255,0,255)
		$virusWindow/afterPassword/venusText.bbcode_text += "\n[color=gray]--- acc43421 has logged in ---[/color]"
		yield(get_tree().create_timer(4), "timeout")
		$virusWindow/afterPassword/venusText.bbcode_text += "\n[color=red]acc43421: [/color][color=#ff9900]@acc89038 [/color]Who are you?"
		yield(get_tree().create_timer(4), "timeout")
		$virusWindow/afterPassword/venusText.bbcode_text += "\n\n[color=red]acc43421: [/color]How did you get access to this application?"
		yield(get_tree().create_timer(3), "timeout")
		$virusWindow/afterPassword/venusText.bbcode_text += "\n\n[color=red]acc43421: [/color]Exit this application IMMEDIATELY."
		return
	$errorSFX.play()


func _on_venusexeButton_double_click():
	$windSFX.play()


func _on_laptop_ready():
	$bootSFX.play()
	yield(get_tree().create_timer(0.5), "timeout")
	$Chatter.visible = true
	yield(get_tree().create_timer(0.1), "timeout")
	$Notes.visible = true
	yield(get_tree().create_timer(0.5), "timeout")
	$Folder.visible = true
	yield(get_tree().create_timer(0.3), "timeout")
	$Recycle.visible = true



func _on_ScrollContainer_ready():
	$chatterWindow/leftScroll.get_v_scrollbar().set_pivot_offset(Vector2())

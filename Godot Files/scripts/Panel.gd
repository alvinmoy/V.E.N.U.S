extends Panel

func _on_Panel_gui_input(event):
	if event is InputEventScreenDrag:
		rect_position += event.relative
		self.raise()


func _on_ColorRect_gui_input(event):
	if event is InputEventScreenDrag:
		rect_position += event.relative
		self.raise()
		

func _on_notesButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_chatterButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_folderButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_folder2Button_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_greenButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()
	
func _on_sandButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_winterButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()
	
func _on_poemButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_recyleButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_restoreButton_pressed():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()
	
func _on_venusButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_venusvenusButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_offeringButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

func _on_venusexeButton_double_click():
	$doubleClickSFX.play()
	self.visible = true
	self.raise()

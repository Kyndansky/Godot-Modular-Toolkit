extends Control

func _ready() -> void:
	%FullscreenCheckbox.button_pressed=Settings.is_fullscreen

#gets called when one presses the button to close the settings menu
func _on_close_button_pressed() -> void:
	$SettingsPanel.visible=false

#gets called when one presses the 'exit' button
func _on_exit_button_pressed() -> void:
	get_tree().quit()

#handles toggled signal for the checkbox which controls the fullscreen setting
func _on_fullscreen_check_box_toggled(toggled_on: bool) -> void:
	if toggled_on==true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

extends Control

func _ready() -> void:
	%FullscreenCheckbox.button_pressed=Settings.is_fullscreen
	%MasterVolumeSlider.value=Settings.master_volume_level
	%MusicVolumeSlider.value=Settings.music_volume_level
	%SoundEffectsVolumeSlider.value=Settings.sound_effects_volume_level
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

#gets called when one changes the value of the master volume slider
func _on_master_volume_slider_value_changed(value: float) -> void:
	Settings.master_volume_level=value

#gets called when one changes the value of the music volume slider
func _on_music_volume_slider_value_changed(value: float) -> void:
	Settings.music_volume_level=value

#gets called when one changes the value of the sound effects volume slider
func _on_sound_effects_volume_slider_value_changed(value: float) -> void:
	Settings.sound_effects_volume_level=value

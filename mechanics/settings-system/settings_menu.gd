extends PanelContainer

#initializing button/sliders values based on settings
func _ready() -> void:
	%FullscreenCheckbox.button_pressed=Settings.is_fullscreen
	%MasterVolumeSlider.value=Settings.master_volume_level
	%MusicVolumeSlider.value=Settings.music_volume_level
	%SoundEffectsVolumeSlider.value=Settings.sound_effects_volume_level

#SINGALS
func _on_fullscreen_checkbox_toggled(toggled_on: bool) -> void:
	Settings.is_fullscreen=toggled_on

func _on_master_volume_slider_value_changed(value: float) -> void:
	Settings.master_volume_level=value

func _on_music_volume_slider_value_changed(value: float) -> void:
	Settings.music_volume_level=value

func _on_sound_effects_volume_slider_value_changed(value: float) -> void:
	Settings.sound_effects_volume_level=value


func _on_close_button_pressed() -> void:
	self.visible=false

extends Control

func _on_close_button_pressed() -> void:
	$SettingsPanel.visible=false

func _on_exit_button_pressed() -> void:
	get_tree().quit()

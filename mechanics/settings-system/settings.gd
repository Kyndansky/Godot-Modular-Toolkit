extends Node

#==============================================================
# This file handles global settings
# such as volume, screen res etc...
# so it is meant to be an autoload
# setters handle the actual change of settings
# (and emitting signals so that other nodes can be notified)
#==============================================================

signal volume_changed(type: String, value: float)
signal fullscreen_changed(value: bool)

enum Resolution { LOW, MID, HIGH }

var master_volume_level: float = 50.0:
	set(value):
		master_volume_level = value
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db(value / 100.0))
		volume_changed.emit("Master", value)
		
var music_volume_level: float = 75.0:
	set(value):
		music_volume_level = value
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), linear_to_db(value / 100.0))
		volume_changed.emit("Music", value)
		
var sound_effects_volume_level:float=50.0:
	set(value):
		sound_effects_volume_level = value
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Sounds"), linear_to_db(value / 100.0))
		volume_changed.emit("Sounds", value)

var is_fullscreen: bool = false:
	set(value):
		is_fullscreen = value
		# Applica direttamente la modalità finestra
		if is_fullscreen:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		fullscreen_changed.emit(value)

# Overview
This is a repository which contains some of my small personal modular projects made with the Godot game engine. These project are meant to be completely modular, which means that each one of them can be easily copied and pasted into any existing project and should work normally with little to no adjustments.

# Mechanics
## 2d-magnetic-interaction-system
### About
This mechanic involves 2 or more nodes which are pulled closer/pushed away depending on their polarity.  
### Usage
<ol>
<li>Copy MagneticComponent.gd inside a scene and give it a CollisionShape2D as a child.</li>
<li>give the MagneticComponent a CollisionShape2D as a child.</li>
<li>Assign the export variables</li>
</ol>

## main-menu
### About
A simple main menu scene with buttons to:
<ul>
<li>Start a new game</li>
<li>Continue an existing save</li>
<li>Open settings menu</li>
<li>Close the game</li>
</ul>

### Usage
add signals to link your own systems (such as settings, etc...) to the buttons in the main menu

<ol>
<li>Copy main_menu.tscn and main_menu.gd to your project</li>
<li>Add signals to make the button in the main menu perform any action you would like</li>
</ol>

## settings-system
### About
A simple settings system featuring:
<ul>
<li>A settings menu</li>
<li>A settings.gd script which handles the change of settings</li>
<li>The ability to save load settings to/from a .cfg file</li>
</ul>

### Usage
<ol>
<li>Copy all the files to your project (settings_menu.tscn and settings_menu.gd are optional)</li>
<li>Add settings.gd to autoload</li>
<li>To change an option from any script: ```Settings.varname=value```</li>
<li>To save/load settings call Settings.save_settings_to_file() or Settings.load_settings_from_file()</li>
</ol>

(The folders in which the settings.cfg file is saved depend on the operative system. see <a href="https://docs.godotengine.org/en/stable/classes/class_configfile.html#configfile">godot docs</a>)
<ul>
  <li>
    Windows: %APPDATA%\Godot\app_userdata\[project-name]\
  </li>
  <li>
    macOS: ~/Library/Application Support/Godot/app_userdata/[project-name]/
  </li>
  <li>
    Linux: ~/.local/share/godot/app_userdata/[project_name]/
  </li>
</ul>


# Permission
Feel free to use any of the mechanics in this repository in any way, i don't care 

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
</ul>

### Usage
<ol>
<li>Copy all the files to your project (settings_menu.tscn and settings_menu.gd are optional)</li>
<li>Add settings.gd to autoload</li>
<li>To change an option from any script: ```Settings.varname=value```</li>
</ol>

# Permission
Feel free to use any of the mechanics in this repository in any way, i don't care 

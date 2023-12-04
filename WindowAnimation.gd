extends Node3D

var isOpen = false
@onready var window = $"."
@onready var openingWindow = $openingWindow
@onready var wind = $Wind
@onready var outdoorSound = $OutdoorSound

func _ready():
	isOpen = false
	openingWindow.playing == false
	wind.playing == false
	wind.volume_db == 30
	outdoorSound.playing == false
	outdoorSound.volume_db == 10
#	openableSurfaceMaterial = door.get_surface_override_material("wire_224086086")

func _process(delta):
	if Input.is_action_just_pressed("wOpen"):
		toggle_window()

func toggle_window():
	if isOpen:
		# Close the door
		openingWindow.stop()
		outdoorSound.stop()
		window.rotate(Vector3(0, 1, 0), deg_to_rad(-90))
		isOpen = false # or true
	else:
		# Open the door
		openingWindow.play()
		wind.play()
		outdoorSound.play()
		window.rotate(Vector3(0, 1, 0), deg_to_rad(90))
		isOpen = true #or false



func _on_timer_timeout():
	pass # Replace with function body.

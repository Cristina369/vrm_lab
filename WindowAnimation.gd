extends Node3D

var isOpen = false
@onready var window = $"."

func _ready():
	isOpen = false
#	openableSurfaceMaterial = door.get_surface_override_material("wire_224086086")

func _process(delta):
	if Input.is_action_just_pressed("wOpen"):
		toggle_window()

func toggle_window():
	if isOpen:
		# Close the door
		window.rotate(Vector3(0, 1, 0), deg_to_rad(-90))
		isOpen = false # or true
	else:
		# Open the door
		window.rotate(Vector3(0, 1, 0), deg_to_rad(90))
		isOpen = true #or false



func _on_timer_timeout():
	pass # Replace with function body.

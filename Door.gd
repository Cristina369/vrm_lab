extends MeshInstance3D

var isOpen = false
@onready var door = $Door1

func _ready():
	isOpen = false
#	openableSurfaceMaterial = door.get_surface_override_material("wire_224086086")

func _process(delta):
	if Input.is_action_just_pressed("interact"):
		toggle_door()

func toggle_door():
	if isOpen:
		# Close the door
		door.rotate(Vector3(0, 1, 0), deg_to_rad(90))
		isOpen = false # or true
	else:
		# Open the door
		door.rotate(Vector3(0, 1, 0), deg_to_rad(-90))
		isOpen = true #or false

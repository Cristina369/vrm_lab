extends MeshInstance3D 

var isOpen = false
var start_time: float = 10.0 
@onready var door = $Door1
@onready var door_opening = $Door_Opening
@onready var outdoor = $OutdoorSound

func _ready():
	isOpen = false
	door_opening.playing == false
	outdoor.playing == true
	outdoor.volume_db == 1
#	openableSurfaceMaterial = door.get_surface_override_material("wire_224086086")

func _process(delta):
	if Input.is_action_just_pressed("interact"):
		toggle_door()

func toggle_door():
	if isOpen:
		# Close the door
		door_opening.play()
		outdoor.stop()
		door.rotate(Vector3(0, 1, 0), deg_to_rad(90))
		isOpen = false # or true
	else:
		# Open the door
		door_opening.play()
		door.rotate(Vector3(0, 1, 0), deg_to_rad(-90))
		isOpen = true #or false


func _on_timer_timeout():
	pass # Replace with function body.

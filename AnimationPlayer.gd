extends AnimationPlayer

@onready var door = $"Vintage-door"
var isOpen = false

func _ready():
	isOpen = false

func _process(delta):
	if Input.is_action_just_pressed("interact"):
		toggle_door()

func toggle_door():
	if isOpen:
		# Close the door
		$DoorRotation.rotate(Vector3(0, 1, 0), deg_to_rad(90))
	else:
		# Open the door
		$DoorRotation.rotate(Vector3(0, 1, 0), deg_to_rad(-90))
	
	isOpen = not isOpen
	


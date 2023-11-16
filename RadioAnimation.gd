extends MeshInstance3D

@onready var animation_player = $AudioStreamPlayer3D

func _ready():
	animation_player.playing == false
	
func _process(delta):
	# Connect your action to this function
	if Input.is_action_just_pressed("radio"):
		_onActionTriggered()

func _onActionTriggered():
	if animation_player.playing == true:
		animation_player.stop()
	elif animation_player.playing == false:
		animation_player.play()

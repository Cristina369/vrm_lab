extends AnimationPlayer

@onready var animation_player = $"."
@onready var animation_audio = $"../AudioStreamPlayer3D"

func _ready():
		animation_audio.playing == false

func _process(delta):
	if Input.is_action_just_pressed("PlantWatering"):
		_onActionTriggered()

func _onActionTriggered():
	# Play the animation
	animation_player.play("watering")  # "fall_animation" is the name of the animation
	if animation_audio.playing == true:
		animation_audio.stop()
	elif animation_audio.playing == false:
		animation_audio.play()

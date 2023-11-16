extends AnimationPlayer

@onready var animation_player = $"."

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("wOpen"):
		$"../../Timer".start()
		_onActionTriggered()

func _onActionTriggered():
	# Play the animation
	animation_player.play("curtais_animation")  # "fall_animation" is the name of the animation

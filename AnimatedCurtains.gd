extends Node3D

@onready var animation_player = $Curtains

func _ready():
	# Connect your action to this function
	if Input.is_action_just_pressed("book"):
		_onActionTriggered()

func _onActionTriggered():
	# Play the animation
	animation_player.play("fall_animation")  # "fall_animation" is the name of the animation

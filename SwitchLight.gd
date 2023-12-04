extends Node3D

var lamp_light: SpotLight3D
@onready var lightSwitch = $"../LightSwitch"

func _ready():
	lamp_light = $"../SpotLight3D"
	lamp_light.visible == false
	lamp_light.hide()
	lightSwitch.playing == false

func _process(delta):
	if Input.is_action_just_pressed("light"):
		_on_Switch_pressed()


func _on_Switch_pressed():
	# Turn on or off the light
	#lamp_light.PARAM_ENERGY 
	#enabled = not lamp_light.enabled
	if lamp_light.visible == false:
		lightSwitch.play()
		lamp_light.show()
	elif lamp_light.visible == true:
		lightSwitch.play()
		lamp_light.hide()

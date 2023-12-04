extends AnimationPlayer

@onready var animation_player = $"."
@onready var book_falling = $"../../BookFalling"
@onready var pages_fluter = $"../../PagesFlutter"

func _ready():
	book_falling.playing == false
	pages_fluter.playing == false

func _process(delta):
	if Input.is_action_just_pressed("wOpen"):
		$"../../Timer".start()
		_onActionTriggered()
	if Input.is_action_just_pressed("BookPickUp"):
		_onActionTriggered2()

func _onActionTriggered():
	# Play the animation
	book_falling.play()
	animation_player.play("fall_animation")  # "fall_animation" is the name of the animation

func _onActionTriggered2():
	# Play the animation
	pages_fluter.play()
	animation_player.play("pickUpBook")  # "fall_animation" is the name of the animation

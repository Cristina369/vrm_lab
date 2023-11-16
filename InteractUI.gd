extends RayCast3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var coll = self.get_collider()

	if self.is_colliding():
		if coll.is_in_group("Interactable"):
			$InteractUI.show()
			if Input.is_action_just_pressed("intereact"):
				coll.interact()
			else:
				$InteractUI.hide()


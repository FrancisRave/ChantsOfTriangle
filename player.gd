extends CharacterBody3D

@export var speed = 5

var target_velocity = Vector3.ZERO
var parle = false

var emoji1 = 0
var emoji2 = 0
var emoji3 = 0


func _physics_process(delta):
	
	# mouvement 
	
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.z += 1
	if Input.is_action_pressed("move_up"):
		direction.z -= 1
	if (direction != Vector3.ZERO):
		direction = direction.normalized()
		$Pivot.basis = Basis.looking_at(direction)
	target_velocity.z = direction.z * speed
	target_velocity.x = direction.x * speed
	velocity = target_velocity
	move_and_slide()
	
	# parler
	
	if Input.is_action_just_pressed("parler"):
		if (parle):
			$parler.visible = false
			parle = false
		else:
			$parler.visible = true
			parle = true
			

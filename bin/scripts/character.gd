extends CharacterBody2D

const speed = 300.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	var direction := Input.get_axis("left", "right")
	velocity.x = direction * speed
	move_and_slide()
	

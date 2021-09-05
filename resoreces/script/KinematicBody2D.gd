extends KinematicBody2D
export var speed = 10
export var gravity = 30
export var max_gravity = 350
export var jump_speed = 235
var max_speed = 150
var velocity = Vector2()
var dirction = Vector2()
#var jumps = 2
#var stamina = 100
func _physics_process(_delta):
	velocity.y = lerp(velocity.y, max_gravity, .005)
	if Input.is_action_pressed("ui_left"):
		dirction.x = -1
#		$guy.flip_h = true
#		$guy.play("walk")
		velocity.y = lerp(velocity.y, max_gravity, .03)
		velocity.x = max(velocity.x - speed , dirction.x * max_speed)
		
		pass
	elif Input.is_action_pressed("ui_right"):
		dirction.x = 1
#		$guy.flip_h = false
#		$guy.play("walk")
		velocity.y = lerp(velocity.y, max_gravity, .03)
#		velocity.y += 50
		velocity.x = min(velocity.x + speed , dirction.x * max_speed)
		
		pass
	else:
		dirction.x = 0
		velocity.y = lerp(velocity.y, max_gravity, .05)
		velocity=velocity.move_toward(Vector2.ZERO,200*_delta)
#		$guy.play("idle")
		#TODO
#	else:
#		if velocity.y > 0:
##			$Sprite.play("fall")
#			pass
#		else:
#			if jumps ==if jumps == 0:
#				#$Sprite.play("dable_jump")
#				pass
#		velocity.x = lerp(velocity.x, 0, .04)
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			velocity.y -= 500
			velocity.y += -jump_speed
			

	velocity = move_and_slide(velocity, Vector2.UP)



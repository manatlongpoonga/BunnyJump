extends KinematicBody2D

var motion = Vector2(0,100)
	
export var SPEED = 500
export var JUMP = 680

func _physics_process(delta):
	if  Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
		#print("I move left")
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
		#print("I move right")
	else: 
		motion.x = 0
		
	if Input.is_action_pressed("jump"):
		motion.y = -JUMP
	else: 
		motion.y = 600
		
	move_and_slide(motion)
		
		
		
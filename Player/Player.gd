extends KinematicBody2D

var motion = Vector2(0,0)
	
export var SPEED = 500
export var JUMP = 1000
export var Gravity = 100
export var Jump_count = 0

func _physics_process(delta):
	apply_gravity()
	jump()	
	walk()
	
	move_and_slide(motion,Vector2(0,-1))
	
func apply_gravity():
	motion.y = motion.y + Gravity
	if is_on_floor():
		motion.y = 0
		print("I'm floor")
	
	
func jump():
	if Jump_count < 1 :
		if Input.is_action_just_pressed("jump"):
				motion.y = -JUMP
				Jump_count = Jump_count+1
	if is_on_floor():
				Jump_count = 0
		
func walk():
	if  Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
		#print("I move left")
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
		#print("I move right")
	else: 
		motion.x = 0


		

	
	
		
		
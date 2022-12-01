extends KinematicBody2D

#change to change speed
var speed = 6
var fastSpeed = 9
var dead = false
var health = 100

func _ready():
	#shows player on start
	show()
	 
func _process(delta):
	#checks if health is 0
	if health == 0:
		dead = true
	#checks input then changes by relative value
	if Input.is_action_pressed("left"):
		move_local_x(-speed)
	if Input.is_action_pressed("right"):
		move_local_x(speed)
	if Input.is_action_pressed("up"):
		move_local_y(-speed)
	if Input.is_action_pressed("down"):
		move_local_y(speed)
	#sprinting
	if Input.is_action_pressed("fast"):
		speed = fastSpeed
	if !Input.is_action_pressed("fast"):
		speed = 6
	if dead == true:
		#put death code here instead of pass
		pass
		



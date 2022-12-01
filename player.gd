extends KinematicBody2D

#change to change speed
var speed = 6
var dead = false

func _ready():
	#shows player on start
	show()
	 
func _process(delta):
	#checks input then changes by relative value
	if Input.is_action_pressed("left"):
		move_local_x(-speed)
	if Input.is_action_pressed("right"):
		move_local_x(speed)
	if Input.is_action_pressed("up"):
		move_local_y(-speed)
	if Input.is_action_pressed("down"):
		move_local_y(speed)
	if dead == true:
		#put death code here
		pass
		


extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Saw_body_entered(body):
	$AudioHit.play()
	if body.get_name() == "Player":
		$AudioHitPlayer.play()
		yield(get_tree().create_timer(0.5), "timeout")
		get_tree().change_scene(str("res://scenes/" + "LoseScreen" + ".tscn"))
	else:
		yield(get_tree().create_timer(0.25), "timeout")
		queue_free()

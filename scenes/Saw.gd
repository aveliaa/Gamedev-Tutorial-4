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
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + "LoseScreen" + ".tscn"))
	else:
		queue_free()
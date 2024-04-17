extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

export (String) var sceneName = "Level1"

func trigger(scene,body):
	if body.get_name() == "Player":
		body.hide()
		$LevelDone.show()
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene(str("res://scenes/" + scene + ".tscn"))
		

func _on_LoseArea_body_entered(body):
	#trigger("LoseScreen",body)

	var current_scene = get_tree().get_current_scene().get_name()
	
	if current_scene == sceneName:
		Global.lives -=1
	
	if (Global.lives < 0):
		trigger("LoseScreen",body)
	
	else:
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))

func _on_WinArea_body_entered(body):
	trigger("Transition",body)


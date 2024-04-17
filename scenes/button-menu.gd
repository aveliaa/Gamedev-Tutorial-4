extends LinkButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

export(String) var scene_to_load

func _on_new_pressed():
	get_tree().change_scene(str("res://scenes/" + scene_to_load + ".tscn"))


func _on_stage_pressed():
	get_tree().change_scene(str("res://scenes/" + "SelectLevel" + ".tscn"))

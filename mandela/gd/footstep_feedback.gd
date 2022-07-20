@tool
extends Node3D


@onready var animation_tree := $"../AnimationTree" as AnimationTree

func _on_footstep_feedback_visibility_changed() -> void:
	if animation_tree.get("parameters/walk/blend_amount") > 0.5:
#		print_debug("footstep")
		
		var random_value = randi() % 5
		$footstep_sound.stream = load("res://sound/grass/footstep_grass_00" + str(random_value) + ".ogg")
		$footstep_sound.stream.loop = false
		$footstep_sound.play()
		
#		var connected_joypads = Input.get_connected_joypads()
#		for i in connected_joypads:
#			Input.start_joy_vibration(i, 0.2, 0,  0.05)

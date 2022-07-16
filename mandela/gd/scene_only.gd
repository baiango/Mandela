@tool
extends WorldEnvironment

var excluded_node_name_list := [
	"map", "world", "node3d"
]


func _ready() -> void:
	if Engine.is_editor_hint():
		var scene_name = get_tree().get_edited_scene_root().get_name()
		scene_name = str(scene_name).to_upper()
		
		for excluded_name in excluded_node_name_list:
			excluded_name = excluded_name.to_upper()
			
			if scene_name == excluded_name:
				queue_free()
	else:
		queue_free()

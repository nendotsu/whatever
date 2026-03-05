extends Node

# ВО ТУТА ПОДГРУЗКА ВСЕЙ НУЖНОЙ ХУЙНИ

@onready var main = get_node("/root/Main")
@onready var world_container = main.get_node("World")

var current_level: Node = null

# обращение к локациям где надо топать ножками

func change_level(level_scene_path: String):
	if current_level:
		current_level.queue_free()
		current_level = null
	
	var next_level = load(level_scene_path)
	
	current_level = next_level.instantiate()
	world_container.add_child(current_level)
	
	# сделать плавное затухание здесь

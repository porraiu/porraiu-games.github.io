extends Node2D


func _ready():
	$"/root/Niveis".respawn_posicao = get_tree().get_root().get_node(get_tree().current_scene.name + "/Personagem").position
	$"/root/Niveis".respawn_posicao = find_node("Personagem").position

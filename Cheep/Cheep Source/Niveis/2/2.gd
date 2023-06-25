extends Node2D


func _ready():
	$"/root/Niveis".respawn_posicao = find_node("Personagem").position

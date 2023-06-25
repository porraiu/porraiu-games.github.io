extends KinematicBody2D

var posicao = Vector2.ZERO

func _ready():
	posicao = position
	print(posicao)



func _on_Bandeira_Hitbox_body_entered(body):
	if body.get_name() == "Personagem":
		$"/root/Niveis".respawn_posicao = posicao

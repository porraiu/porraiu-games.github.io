extends StaticBody2D

export var posicao = Vector2.ZERO


func _on_FallZoneHitbox_body_entered(body):
	if body.get_name() == "Personagem":
		body.position = posicao

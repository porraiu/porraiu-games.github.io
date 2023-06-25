extends StaticBody2D


func _on_EspinhoLamaHitbox_body_entered(body):
	if body.get_name() == "Personagem":
		$"/root/Niveis".recarregar_cena()

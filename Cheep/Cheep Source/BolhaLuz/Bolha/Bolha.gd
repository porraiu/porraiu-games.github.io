extends KinematicBody2D


func _on_BolhaHitbox_body_entered(body):
	if body.get_name() == "Personagem":
		get_parent().get_parent().get_parent().get_node("Personagem").luz = true
		get_parent().get_parent().get_parent().get_node("Personagem/LuzDesativar").start()
		get_node("../GerarTimer").start()
		queue_free()

extends KinematicBody2D

var forcadireita = -600
var forcacima = -400
var deltanovo = 0


func _physics_process(delta):
	deltanovo = delta


func _on_HitboxMola_body_entered(body):
	if body.get_name() == "Personagem":
		$AnimResetTimer.start()
		$AnimatedSprite.play("Usada")
		get_parent().get_parent().get_node("Personagem/ClampTimer").start()
		get_parent().get_parent().get_node("Personagem").lancado = true
		get_parent().get_parent().get_node("Personagem/AnimatedSprite").flip_h = true
		body.move.x = forcadireita
		body.move.y = forcacima


func _on_AnimResetTimer_timeout():
	$AnimatedSprite.play("Idle")
	

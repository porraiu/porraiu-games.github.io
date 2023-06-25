extends KinematicBody2D

var forca = 900
var deltanovo = 0


func _physics_process(delta):
	deltanovo = delta


func _on_HitboxMola_body_entered(body):
	if body.get_name() == "Personagem":
		body.move.y = -forca
		$AnimResetTimer.start()
		$AnimatedSprite.play("Usada")


func _on_AnimResetTimer_timeout():
	$AnimatedSprite.play("Idle")

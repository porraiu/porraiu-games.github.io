extends KinematicBody2D

var mover = Vector2.ZERO
var velocidade = 0
var current_position_x = self.position.x

func _physics_process(delta):
	if position.x != current_position_x:
		position.x = current_position_x
	mover.y += velocidade * delta
	mover = move_and_slide(mover, Vector2.UP)

func _on_PlataformaHitbox_body_entered(body):
	if body.get_name() == "Personagem":
		velocidade = 100
		$DesaparecerTimer.start()


func _on_DesaparecerTimer_timeout():
	get_parent().criarplataforma()
	queue_free()


func _on_PlataformaMorrerHitbox_body_entered(body):
	pass # Replace with function body.

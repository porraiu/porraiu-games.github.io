extends KinematicBody2D

var move = Vector2.ZERO
var lancado = false
var luz = false
const velocity = 10
const velocityvoar = 25
const max_velocity_x = 250
const jump_force = -600
const gravity = 1000
const max_gravity = 500
const min_gravity = -10000
const min_mola_velocidade = -600
const max_mola_velocidade = 600

func _physics_process(delta):
	if luz:
		$CPUParticles2D.emitting = true
		moverluz()
		clampvoar()
		$AnimatedSprite.position.y = 8
	else:
		$CPUParticles2D.emitting = false
		$AnimatedSprite.position.y = 0
		mover()
		saltar()
		
		move.y += gravity * delta
		
		if is_on_ceiling():
			move.y = gravity * delta
		if move.x in range(-9, 10):
			move.x = 0
		
		clamp_values()
		animations()
	move = move_and_slide(move, Vector2.UP)

func mover():
	if Input.is_action_pressed("Direita"):
		move.x += velocity
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("Esquerda"):
		move.x -= velocity
		$AnimatedSprite.flip_h = true
	else:
		if lancado == false:
			move.x *= 0.90

func moverluz():
	$AnimatedSprite.play("Luz")
	if Input.is_action_pressed("Direita"):
		move.x += velocityvoar
	elif Input.is_action_pressed("Esquerda"):
		move.x -= velocityvoar
	else:
		move.x *= 0.90
	if Input.is_action_pressed("Baixo"):
		move.y += velocityvoar
	elif Input.is_action_pressed("Cima"):
		move.y -= velocityvoar
	else:
		move.y *= 0.90

func saltar():
	if Input.is_action_pressed("Saltar") and is_on_floor():
		move.y = jump_force

func clamp_values():
	if lancado == false:
		move.x = clamp(move.x, -max_velocity_x, max_velocity_x)
	else:
		move.x = clamp(move.x, min_mola_velocidade, max_mola_velocidade)
	move.y = clamp(move.y, min_gravity, max_gravity)

func clampvoar():
	move.x = clamp(move.x, jump_force, -jump_force)
	move.y = clamp(move.y, jump_force, -jump_force)


func animations():
	if is_on_floor():
		if abs(move.x) > 10:
			$AnimatedSprite.play("Andar")
		else:
			$AnimatedSprite.play("Quieto")
	else:
		if move.y > 0:
			$AnimatedSprite.play("Cair")
		else:
			$AnimatedSprite.play("Saltar")


func _on_ClampTimer_timeout():
	lancado = false


func _on_LuzDesativar_timeout():
	luz = false

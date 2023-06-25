extends KinematicBody2D


var tocado = false


func _ready():
	var area = $Hitbox
	area.connect("body_entered", self, "_on_Hitbox_body_entered")


func _on_Hitbox_body_entered(body):
	if body.get_name() == "Personagem" and tocado == false:
		$Sprite.set_texture(preload("res://Botao_Plataforma/Botao_Tocado.png"))
		print(get_parent().get_node("Plataforma_Node/AnimationPlayer"))
		get_parent().get_node("Plataforma_Node/AnimationPlayer").play("mover")
		tocado = true

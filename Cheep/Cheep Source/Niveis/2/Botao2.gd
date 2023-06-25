extends StaticBody2D


var tocado = false


func _on_Botao2Hitbox_body_entered(body):
	if body.get_name() == "Personagem" and tocado == false:
		$Sprite.set_texture(preload("res://TileMap/NormalRes/tile_0149.png"))
		get_tree().get_root().get_node("2/Portao2/AnimationPlayer").play("mover")
		tocado = true

extends Position2D


func _on_Timer_timeout():
	var personagem = preload("res://Menus/FakePlayer.tscn").instance()
	get_parent().add_child(personagem)
	personagem.position = self.position

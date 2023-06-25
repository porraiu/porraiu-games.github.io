extends Position2D


func criarplataforma():
	var plataforma = preload("res://PlataformaCair/Normal/PlataformaNormal1/PlataformaNormal1.tscn").instance()
	add_child(plataforma)

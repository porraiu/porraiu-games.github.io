extends Position2D

func gerarbolha():
	var bolha = preload("res://BolhaLuz/Bolha/Bolha.tscn").instance()
	add_child(bolha)


func _on_GerarTimer_timeout():
	gerarbolha()

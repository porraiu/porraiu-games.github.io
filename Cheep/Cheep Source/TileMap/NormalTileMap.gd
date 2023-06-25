extends TileMap


func _ready():
	if not $"/root/Niveis".completo2:
		queue_free()

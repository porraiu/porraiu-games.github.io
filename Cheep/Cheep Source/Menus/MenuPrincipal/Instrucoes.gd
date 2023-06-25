extends TextureButton


func _on_Instrucoes_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/Instrucoes/Instrucoes.tscn")

extends TextureButton


func _on_Creditos_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/Creditos/Creditos.tscn")

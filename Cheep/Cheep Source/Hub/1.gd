extends Node2D


func _ready():
	print("Nível 1 Completo - " + str($"/root/Niveis".completo1))


var dentro = false


# warning-ignore:unused_argument
func _process(delta):
	if dentro:
		$ColorRect.visible = true
		if Input.is_action_pressed("Entrar_Nivel"):
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://Niveis/1/1.tscn")
	else:
		$ColorRect.visible = false


func _on_Area_body_entered(body):
	if body.get_name() == "Personagem":
		dentro = true

func _on_Area_body_exited(body):
	if body.get_name() == "Personagem":
		dentro = false

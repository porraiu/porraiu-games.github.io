extends Node2D


func _ready():
	print("Nível 2 Completo - " + str($"/root/Niveis".completo2))


var dentro = false

# warning-ignore:unused_argument
func _process(delta):
	if dentro:
		$ColorRect.visible = true
		if Input.is_action_pressed("Entrar_Nivel"):
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://Niveis/3/3.tscn")
	else:
		$ColorRect.visible = false


func _on_Area_body_entered(body):
	if body.get_name() == "Personagem":
		dentro = true

func _on_Area_body_exited(body):
	if body.get_name() == "Personagem":
		dentro = false

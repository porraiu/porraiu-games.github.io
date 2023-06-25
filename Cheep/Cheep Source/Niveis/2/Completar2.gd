extends Area2D

func _ready():
	$AnimationPlayer.play("mover")


func _on_Completar2_body_entered(body):
	if body.get_name() == "Personagem":
		$"/root/Niveis".completo2 = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Hub/Hub.tscn")

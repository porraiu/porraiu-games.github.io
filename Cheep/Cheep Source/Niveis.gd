extends Node


var completo1 = false
var completo2 = false
var completo3 = false
var completo4 = false
var completo5 = false
var completo6 = false
var completo7 = false
var completo8 = false
var completo9 = false
var completo10 = false


var moedas1 = 0
var moedas2 = 0
var moedas3 = 0
var moedas4 = 0
var moedas5 = 0
var moedas6 = 0
var moedas7 = 0
var moedas8 = 0
var moedas9 = 0
var moedas10 = 0

var moedastotal = 0

var respawn_posicao = Vector2.ZERO


func recarregar_cena():
	var personagem = get_tree().get_root().get_node(get_tree().current_scene.name + "/Personagem")
	print(personagem)
	personagem.position = respawn_posicao

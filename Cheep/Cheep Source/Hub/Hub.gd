extends Node2D

onready var moedas = $"/root/Niveis"

func _ready():
	moedas.moedastotal = moedas.moedas1 + moedas.moedas2 + moedas.moedas3 + moedas.moedas4 + moedas.moedas5 + moedas.moedas6 + moedas.moedas7 + moedas.moedas8 + moedas.moedas9 + moedas.moedas10 

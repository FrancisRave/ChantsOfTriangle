extends Control

var emoji_actuel = 1
@onready var emoji1 = $MarginContainer/VBoxContainer3/HBoxContainer/Emoji1
@onready var emoji2 = $MarginContainer/VBoxContainer3/HBoxContainer/Emoji2
@onready var emoji3 = $MarginContainer/VBoxContainer3/HBoxContainer/Emoji3
var valeur_emoji1 = 0
var valeur_emoji2 = 0
var valeur_emoji3 = 0
signal parler(e1, e2, e3)

# Called when the node enters the scene tree for the first time.
func _ready():
	var symbole = load("res://emojis/point.png")
	emoji1.texture = symbole
	emoji2.texture = symbole
	emoji3.texture = symbole
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (emoji_actuel >= 4):
		emoji_actuel = 1

# BOUTONS EMOJIS
func _on_bt_aubergine_pressed():
	var symbole = load("res://emojis/bouffe/aubergine.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 1
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 1
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 1
	emoji_actuel += 1

func _on_bt_poire_pressed():
	var symbole = load("res://emojis/bouffe/poire.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 2
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 2
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 2
	emoji_actuel += 1

func _on_bt_steak_pressed():
	var symbole = load("res://emojis/bouffe/steak.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 3
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 3
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 3
	emoji_actuel += 1
	pass # Replace with function body.

func _on_bt_baisse_pressed():
	var symbole= load("res://emojis/main/pouce_baisse.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 4
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 4
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 4
	emoji_actuel += 1

func _on_bt_leve_pressed():
	var symbole= load("res://emojis/main/pouce_leve.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 5
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 5
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 5
	emoji_actuel += 1

func _on_bt_doigt_pressed():
	var symbole= load("res://emojis/main/pouce_doigt.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 6
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 6
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 6
	emoji_actuel += 1

func _on_bt_carton_pressed():
	var symbole= load("res://emojis/objet/carton.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 7
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 7
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 7
	emoji_actuel += 1

func _on_bt_maison_pressed():
	var symbole= load("res://emojis/objet/maison.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 8
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 8
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 8
	emoji_actuel += 1

func _on_bt_moai_pressed():
	var symbole= load("res://emojis/objet/moai.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 9
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 9
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 9
	emoji_actuel += 1

func _on_bt_oeil_pressed():
	var symbole= load("res://emojis/tete/visage_clin_doeil.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 10
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 10
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 10
	emoji_actuel += 1

func _on_bt_pleur_pressed():
	var symbole= load("res://emojis/tete/visage_pleurs.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 11
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 11
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 11
	emoji_actuel += 1

func _on_bt_sommeil_pressed():
	var symbole= load("res://emojis/tete/visage_sommeil.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 12
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 12
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 12
	emoji_actuel += 1

func _on_bt_chapeau_pressed():
	var symbole= load("res://emojis/thune/haut_de_forme.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 13
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 13
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 13
	emoji_actuel += 1

func _on_bt_dollar_pressed():
	var symbole= load("res://emojis/thune/dollar.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 14
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 14
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 14
	emoji_actuel += 1

func _on_bt_voiture_pressed():
	var symbole= load("res://emojis/thune/voiture.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 15
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 15
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 15
	emoji_actuel += 1

func _on_bt_triangle_pressed():
	var symbole= load("res://emojis/triangle.png")
	match emoji_actuel:
		1:
			emoji1.texture = symbole
			valeur_emoji1 = 16
		2:
			emoji2.texture = symbole
			valeur_emoji2 = 16
		3:
			emoji3.texture = symbole
			valeur_emoji3 = 16
	emoji_actuel += 1
	
func _on_bt_non_pressed():
	var symbole = load("res://emojis/point.png")
	emoji1.texture = symbole
	emoji2.texture = symbole
	emoji3.texture = symbole
	valeur_emoji1 = 0
	valeur_emoji2 = 0
	valeur_emoji3 = 0
	emoji_actuel = 1

func _on_bt_oui_pressed():
	parler.emit(valeur_emoji1, valeur_emoji2, valeur_emoji3)
	pass # Replace with function body.

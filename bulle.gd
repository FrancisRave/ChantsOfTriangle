extends Node3D

@onready var  s1 = $Symbolea1
@onready var  s2 = $Symbolea2
@onready var  s3 = $Symbolea3

var dico_emo = {
	0:"res://emojis/point.png",
	1:"res://emojis/bouffe/aubergine.png",
	2:"res://emojis/bouffe/poire.png",
	3:"res://emojis/bouffe/steak.png",
	4:"res://emojis/main/pouce_baisse.png",
	5:"res://emojis/main/pouce_doigt.png",
	6:"res://emojis/main/pouce_leve.png",
	7:"res://emojis/objet/carton.png",
	8:"res://emojis/objet/maison.png",
	9:"res://emojis/objet/moai.png",
	10:"res://emojis/tete/visage_clin_doeil.png",
	11:"res://emojis/tete/visage_pleurs.png",
	12:"res://emojis/tete/visage_sommeil.png",
	13:"res://emojis/thune/haut_de_forme.png",
	14:"res://emojis/thune/dollar.png",
	15:"res://emojis/thune/voiture.png",
	16:"res://emojis/triangle.png",
}
# Called when the node enters the scene tree for the first time.
func _ready():
	s1.visible = false
	s2.visible = false
	s3.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_parler_parler(e1, e2, e3):
	s1.visible = true
	s2.visible = true
	s3.visible = true
	s1.texture = load(dico_emo[e1])
	s2.texture = load(dico_emo[e2])
	s3.texture = load(dico_emo[e3])
	$timer_parle.start(3)
	$AudioStreamPlayer3D.play()
	pass # Replace with function body.


func _on_timer_parle_timeout():
	s1.visible = false
	s2.visible = false
	s3.visible = false
	pass # Replace with function body.

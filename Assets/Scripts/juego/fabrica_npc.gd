extends Node2D


var npc_scene = preload("res://Assets/Scenes/juego/npc.tscn")
var boton_npc: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalSignal.iniciar_npc.connect(seleccionar_tipo)

func seleccionar_tipo(tipo):
	boton_npc = tipo
	

func iniciar_npc():
	GlobalSignal.boton.emit(boton_npc)
	var tipo = boton_npc
	if boton_npc == 0: #random
		tipo = randi_range(0,5)
		if tipo==2 or tipo==0:
			tipo=6
	var npc = npc_scene.instantiate()
	print (tipo)
	npc.tipo=tipo
	npc.global_position = Vector2(75,570)
	get_tree().current_scene.add_child(npc)
	

func _on_timer_timeout() -> void:
	iniciar_npc()

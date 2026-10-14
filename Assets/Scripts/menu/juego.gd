extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cargar_mapa()
	cargar_fabrica()
	GlobalSignal.iniciar_npc.emit(1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func cargar_mapa():
	pass

func cargar_fabrica():
	pass

extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_common_pressed() -> void:
	GlobalSignal.iniciar_npc.emit(6)

func _on_fire_pressed() -> void:
	GlobalSignal.iniciar_npc.emit(1)
	
func _on_cold_pressed() -> void:
	GlobalSignal.iniciar_npc.emit(3)

func _on_lightning_pressed() -> void:
	GlobalSignal.iniciar_npc.emit(5)

func _on_poison_pressed() -> void:
	GlobalSignal.iniciar_npc.emit(4)

func _on_random_pressed() -> void:
	GlobalSignal.iniciar_npc.emit(0)


func _on_create_obs_pressed() -> void:
	pass # Replace with function body.


func _on_delete_obs_pressed() -> void:
	pass # Replace with function body.

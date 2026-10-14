extends CanvasLayer


var cursor = preload("res://Models/ikurosofttrans.png")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
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
	if GlobalGame.create:
		GlobalGame.create = false
		$Control/create_obs.modulate = Color.WHITE
		
	else:
		GlobalGame.create = true 
		GlobalGame.delete = false
		$Control/delete_obs.modulate = Color.WHITE
		$Control/create_obs.modulate = Color.RED
		#Input.set_custom_mouse_cursor(cursor)

func _on_delete_obs_pressed() -> void:
	
	if GlobalGame.delete:
		GlobalGame.delete = false
		$Control/delete_obs.modulate = Color.WHITE
	else:
		GlobalGame.delete = true 
		GlobalGame.create = false
		$Control/create_obs.modulate = Color.WHITE
		$Control/delete_obs.modulate = Color.RED
		
func _on_create_obs_mouse_entered() -> void:
	
	$Control/create_obs.modulate = Color.YELLOW


func _on_create_obs_mouse_exited() -> void:
	if GlobalGame.create:
		return
	$Control/create_obs.modulate = Color.WHITE


func _on_delete_obs_mouse_entered() -> void:
	$Control/delete_obs.modulate = Color.YELLOW


func _on_delete_obs_mouse_exited() -> void:
	if GlobalGame.delete:
		return
	$Control/delete_obs.modulate = Color.WHITE

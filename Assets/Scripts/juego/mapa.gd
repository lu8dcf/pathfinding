extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_llegada_body_entered(body: Node2D) -> void:
	if body.is_in_group("npc"):
		body.queue_free()


func _on_zon_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon1/Sprite2D.visible = true
			$link1.enabled = false 
			
		if GlobalGame.delete:
			$zon1/Sprite2D.visible = false
			$link1.enabled = true

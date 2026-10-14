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


func _on_zon_1_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon1/Sprite2D.visible = true
			$link1.enabled = false 
			
		if GlobalGame.delete:
			$zon1/Sprite2D.visible = false
			$link1.enabled = true


func _on_zon_2_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon2/Sprite2D.visible = true
			$link2.enabled = false 
			
		if GlobalGame.delete:
			$zon2/Sprite2D.visible = false
			$link2.enabled = true


func _on_zon_3_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon3/Sprite2D.visible = true
			$link3.enabled = false 
			
		if GlobalGame.delete:
			$zon3/Sprite2D.visible = false
			$link3.enabled = true


func _on_zon_4_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon4/Sprite2D.visible = true
			$link4.enabled = false 
			
		if GlobalGame.delete:
			$zon4/Sprite2D.visible = false
			$link4.enabled = true


func _on_zon_5_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon5/Sprite2D.visible = true
			$link5.enabled = false 
			
		if GlobalGame.delete:
			$zon5/Sprite2D.visible = false
			$link5.enabled = true


func _on_zon_6_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon6/Sprite2D.visible = true
			$link6.enabled = false 
			
		if GlobalGame.delete:
			$zon6/Sprite2D.visible = false
			$link6.enabled = true


func _on_zon_7_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon7/Sprite2D.visible = true
			$link7.enabled = false 
			
		if GlobalGame.delete:
			$zon7/Sprite2D.visible = false
			$link7.enabled = true


func _on_zon_8_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon8/Sprite2D.visible = true
			$link8.enabled = false 
			
		if GlobalGame.delete:
			$zon8/Sprite2D.visible = false
			$link8.enabled = true


func _on_zon_9_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon9/Sprite2D.visible = true
			$link9.enabled = false 
			
		if GlobalGame.delete:
			$zon9/Sprite2D.visible = false
			$link9.enabled = true


func _on_zon_10_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon10/Sprite2D.visible = true
			$link10.enabled = false 
			$link10a.enabled = false 
			
		if GlobalGame.delete:
			$zon10/Sprite2D.visible = false
			$link10.enabled = true
			$link10a.enabled = true


func _on_zon_11_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon11/Sprite2D.visible = true
			$link11.enabled = false 
			
		if GlobalGame.delete:
			$zon11/Sprite2D.visible = false
			$link11.enabled = true


func _on_zon_13_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon13/Sprite2D.visible = true
			$link13.enabled = false 
			
		if GlobalGame.delete:
			$zon13/Sprite2D.visible = false
			$link13.enabled = true


func _on_zon_12_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon12/Sprite2D.visible = true
			$link12.enabled = false 
			
		if GlobalGame.delete:
			$zon12/Sprite2D.visible = false
			$link12.enabled = true


func _on_zon_14_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon14/Sprite2D.visible = true
			$link14.enabled = false 
			
		if GlobalGame.delete:
			$zon14/Sprite2D.visible = false
			$link14.enabled = true


func _on_zon_15_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon15/Sprite2D.visible = true
			$link15.enabled = false 
			
		if GlobalGame.delete:
			$zon15/Sprite2D.visible = false
			$link15.enabled = true


func _on_zon_16_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon16/Sprite2D.visible = true
			$link16.enabled = false 
			
		if GlobalGame.delete:
			$zon16/Sprite2D.visible = false
			$link16.enabled = true


func _on_zon_17_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon17/Sprite2D.visible = true
			$link17.enabled = false 
			
		if GlobalGame.delete:
			$zon17/Sprite2D.visible = false
			$link17.enabled = true


func _on_zon_21_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon21/Sprite2D.visible = true
			$link21.enabled = false 
			
		if GlobalGame.delete:
			$zon21/Sprite2D.visible = false
			$link21.enabled = true

func _on_zon_20_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if GlobalGame.create:
			$zon20/Sprite2D.visible = true
			$link20.enabled = false 
			$link20a.enabled = false 
			
		if GlobalGame.delete:
			$zon20/Sprite2D.visible = false
			$link20.enabled = true
			$link20a.enabled = true

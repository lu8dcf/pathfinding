extends CharacterBody2D

@export var velocidad := 120.0

@onready var agent: NavigationAgent2D = $NavigationAgent2D
@export var tipo: int = 0
var sprite ="res://Models/6.png"

var objetivo: Node2D

const LAYER_GROUND = 1 << 0
const LAYER_FIRE = 1 << 1
const LAYER_COLD = 1 << 2
const LAYER_POISON = 1 << 4
const LAYER_LIGHT = 1 << 3

func _ready() -> void:
	cargar_sprite()
	cargar_layer()
	objetivo = get_tree().get_first_node_in_group("llegada")
	
	# Esperar un frame de física para que la navegación esté lista
	await get_tree().physics_frame
	
	if objetivo:
		agent.target_position = objetivo.global_position

	add_to_group("npc") # grupo npc
	
	# movimiento suave en las esquinas
	agent.avoidance_enabled = true
	agent.radius = 30
	agent.debug_enabled = true
	
	

func _physics_process(_delta: float) -> void:

	if agent.is_navigation_finished():
		velocity = Vector2.ZERO
		move_and_slide()
		return
	
	var siguiente_punto = agent.get_next_path_position()

	var direccion = global_position.direction_to(siguiente_punto)

	var velocidad_objetivo = direccion * velocidad

	velocity = velocity.lerp(velocidad_objetivo, 0.1)

	move_and_slide()


func cargar_sprite():
	$Sprite2D.texture = load ("res://Models/"+str(tipo)+".png")
	
func cargar_layer():
	match tipo:
		0:
			agent.navigation_layers = LAYER_GROUND 
			
		1:
			agent.navigation_layers = LAYER_GROUND | LAYER_FIRE 
	
		3: # Cold
			agent.navigation_layers = LAYER_GROUND | LAYER_COLD

		5: # Lightning
			agent.navigation_layers = LAYER_GROUND | LAYER_LIGHT

		4: # Poison
			agent.navigation_layers = LAYER_GROUND | LAYER_POISON

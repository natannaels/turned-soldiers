extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


#variaveis que serao herdadas
@export_category("Variaveis")
@export var mov_speed: float = 128.0

@export_category("Objetos")
#@export var animacao: AnimatedSprite2D

func _process(delta: float) -> void:
	pass


func _physics_process(delta: float) -> void:
	_movimentacao()
	_animacao()
	
func _movimentacao() -> void:
	var direcao: Vector2 = Input.get_vector("mov_esq", "mov_dir", "mov_cima", "mov_baixo")
	
	velocity = direcao * mov_speed
	
	#Para quando colidir, deslizar nessa porra
	move_and_slide()
	
func _animacao() ->void:
	#flip no sprite
	if velocity.x > 0:
		print("x > 0")
		animated_sprite_2d.flip_h = false
	if velocity.x < 0:
		print("x < 0")
		animated_sprite_2d.flip_h = true
		
	#animacao
	if velocity:
		animated_sprite_2d.play("Walk")
		return
	animated_sprite_2d.play("Idle")

		
	
			
	
	
	
	

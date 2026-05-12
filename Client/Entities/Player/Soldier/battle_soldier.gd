extends CharacterBody2D

@export var data : CharacterData
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

enum PlayerState {
	IDLE,
	ATTACK,
	BLOCK,
	HIT,
	RUN
}
var state : PlayerState

# Maquina de Estados
# FIXME Refatorar maquina de estados

func _physics_process(delta: float) -> void:
	
	match state:
		PlayerState.IDLE:
			idle_state()
		PlayerState.ATTACK:
			attack_state()
		PlayerState.BLOCK:
			block_state()
		PlayerState.HIT:
			hit_state()
		PlayerState.RUN:
			run_state()

# Alternadores de estados
func go_to_idle_state():
	state = PlayerState.IDLE
	animated_sprite_2d.play("idle")
	
func go_to_attack_state():
	state = PlayerState.ATTACK
	animated_sprite_2d.play("attack")
	
func go_to_block_state():
	state = PlayerState.BLOCK
	animated_sprite_2d.play("block")
	
func go_to_hit_state():
	state = PlayerState.HIT
	animated_sprite_2d.play("hit")
	
func go_to_run_state():
	state = PlayerState.RUN
	animated_sprite_2d.play("run")

# Funcoes de cada estado
func idle_state():
	pass

func attack_state():
	pass

func block_state():
	pass

func hit_state():
	pass

func run_state():
	pass

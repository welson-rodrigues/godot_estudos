extends CharacterBody2D

var velocidade_de_movimento : float = 400.0
var direcao_do_movimento : Vector2 = Vector2(0, 0)

func _ready():
	pass
	

func _process(delta):
	movimentar_jogador()
	
	
func movimentar_jogador() -> void:
	# Movimentação Horizontal
	if Input.is_action_pressed("mv_direito"):
		direcao_do_movimento.x = 1
	elif Input.is_action_pressed("mv_esquerda"):
		direcao_do_movimento.x = -1
	else:
		direcao_do_movimento.x = 0
		
	# Movimentação Vertical
	if Input.is_action_pressed("mv_para_cima"):
		direcao_do_movimento.y = -1
	elif Input.is_action_pressed("mv_para_baixo"):
		direcao_do_movimento.y = 1	
	else:
		direcao_do_movimento.y = 0
				
	# Aplica as modunças na direção do jogador
	velocity = direcao_do_movimento.normalized() * velocidade_de_movimento
	move_and_slide()

extends Control


func _ready():
	pass 
	

func _process(delta):
	pass


func _on_play_pressed():
	get_tree().change_scene_to_file("caminho_do_seu_jogo")


func _on_quit_pressed():
	get_tree().quit()

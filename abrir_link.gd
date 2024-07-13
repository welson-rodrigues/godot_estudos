extends Control

var link = "https://YouTube.com/@ZeeGameDev"

func _ready():
    pass

func _process(delta):
    pass

func _on_play_pressed(): # sinal do botão
    OS.shell_open(link) # Abrindo link

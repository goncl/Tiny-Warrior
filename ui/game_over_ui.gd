class_name GameOverUI
extends CanvasLayer


@onready var time_label: Label = %TimeLabel
@onready var monsters_label: Label = %MonstersLabel
@onready var gold_label: Label = %GoldLabel


@export var restart_delay: float = 5.0
var restart_cooldown: float


func _ready():
	time_label.text = GameManager.time_elapsed_string
	monsters_label.text = str(GameManager.monsters_defeated_counter)
	gold_label.text = str(GameManager.gold_counter)
	restart_cooldown = restart_delay


#func _process(delta):
	#restart_cooldown -= delta
	#if restart_cooldown <= 0.0:
		#restart_game()


#func restart_game():
	
	


func _on_start_button_button_down():
	GameManager.reset()
	get_tree().reload_current_scene()


func _on_exit_button_button_down():
	get_tree().quit()

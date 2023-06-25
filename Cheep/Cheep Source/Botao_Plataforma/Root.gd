extends Node2D


export var pos_final = Vector2.ZERO


func _ready():
	var pos_inicial = get_node("Plataforma_Node").position
	var animationplayer = AnimationPlayer.new()
	var animation = Animation.new()
	animationplayer.name = "AnimationPlayer"
	animationplayer.connect("animation_finished", self, "_on_animation_finished")
	get_node("Plataforma_Node").add_child(animationplayer)
	
	animation.length = 2.0
	var track_index = animation.add_track(Animation.TYPE_VALUE)
	animation.track_set_path(track_index, ":position")
	animation.track_insert_key(track_index, 0.0, pos_inicial, 0.329419)
	animation.track_insert_key(track_index, 2.0, pos_final, 0.329419)
	
	for i in range(animation.track_get_key_count(track_index)):
		var pos = animation.track_get_key_value(track_index, i)
		var time = animation.track_get_key_time(track_index, i)
		print("Key ", i, ": Time = ", time, ", Position = ", pos)
	
	animationplayer.add_animation("mover", animation)

func _on_animation_finished(anim_name):
	get_node("Plataforma_Node/Plataforma/CPUParticles2D").emitting = true

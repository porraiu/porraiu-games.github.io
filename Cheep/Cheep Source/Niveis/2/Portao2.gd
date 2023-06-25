extends StaticBody2D

# warning-ignore:unused_argument
func _on_AnimationPlayer_animation_finished(anim_name):
	$CPUParticles2D.emitting = true

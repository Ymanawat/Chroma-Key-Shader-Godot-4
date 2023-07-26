extends Control
	
func _on_color_picker_button_color_changed(color):
	# Update the "chroma_key_color" shader parameter of the VideoStreamPlayer's material
	$VideoStreamPlayer.material.set("shader_parameter/chroma_key_color", color)
	
func _on_h_slider_value_changed(value):
	# Update the "pickup_range" shader parameter of the VideoStreamPlayer's material
	$VideoStreamPlayer.material.set("shader_parameter/pickup_range", value)
	
func _on_h_slider_2_value_changed(value):
	# Update the "fade_amount" shader parameter of the VideoStreamPlayer's material
	$VideoStreamPlayer.material.set("shader_parameter/fade_amount", value)
	
func _on_video_stream_player_finished():
	# Restart the video playback when it's finished
	$VideoStreamPlayer.play()

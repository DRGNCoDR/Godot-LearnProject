extends Area2D

func _on_body_entered(body):
	queue_free() #get rid of the item	

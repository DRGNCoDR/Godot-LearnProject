
##UPDATE CURRENT_SPAWN_PICKUP_ITEMS -= 1 to Singleton class when item picked up
extends Area2D

func _on_body_entered(body):
	queue_free() #get rid of the item
	SingletonVariables.Score += 10

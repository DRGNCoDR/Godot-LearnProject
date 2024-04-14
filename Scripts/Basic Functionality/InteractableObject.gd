extends Area2D

var allowInteract 
var icon 

# Called when the node enters the scene tree for the first time.
func _ready():
	allowInteract = false
	
	icon = $Icon
	icon.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	if allowInteract == true:		
		if Input.is_action_just_released("ui_up"):
			var rng = RandomNumberGenerator.new()
			
			#When down is pressed it will spawn a new pickup at a random location
			var pickup =  preload("res://Scene/Basic Functionality/PickupItem.tscn").instantiate()
			get_parent().add_child(pickup)
			pickup.global_position = Vector2(rng.randf_range(20.0, 800.0),500)

func _on_body_entered(body):
	allowInteract = true
	
	icon.show()

func _on_body_exited(body):
	allowInteract = false
	
	icon.hide()

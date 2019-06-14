extends GridContainer

func _ready():
	var cardFactory = preload( "res://cards/cardFactory.tscn" ).instance()
	for i in range( 100 ):
		add_child( cardFactory.generate_card( randi() % 2 ) )
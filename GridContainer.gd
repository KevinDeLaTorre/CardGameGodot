extends GridContainer

func _ready():
	for i in range( 10 ):
		var card = preload( "res://cards/cardTypes/minionCard.tscn" ).instance()
		add_child( card )
extends Node

func generate_card( index ):
	return get_child( index ).duplicate()
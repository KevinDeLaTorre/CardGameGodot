extends Reference

var _cards = {}

func readDatabase( path ):
	var file = File.new()
	if file.open( path, File.READ ) != OK:
		printerr( "Error opening card database: " + file.get_error() )

	var json = JSON.parse( file.get_as_text() )
	file.close()
	if json.error != OK:
		printerr( "Error parsing card database: " + json.error_string )

	readCards( json.result )

func readCards( json ):
	for id in json.keys:
		
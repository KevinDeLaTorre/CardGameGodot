extends Reference

var id = -1
var name = ""
var text = ""
var type = ""
var rarity = 0
var cost = -1
var attack = -1
var health = -1
var artwork = {}
var effects = {}
var enchantments = {}


func duplicate():
	var copy = get_script().new()
	
	copy.id = id
	copy.name = name
	copy.text = text
	copy.type = type
	copy.rarity = rarity
	copy.cost = cost
	copy.attack = attack
	copy.health = health
	copy.artwork = artwork.duplicate()
	copy.effects = effects.duplicate()
	copy.enchantments = enchantments.duplicate()
	
	return copy
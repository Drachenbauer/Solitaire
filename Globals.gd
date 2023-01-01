extends Node


# Declare member variables here:
const SUITS = {"h" : 0, "d" : 2, "s" : 4, "c" : 6}
const VALUES = ["a", 2, 3, 4, 5, 6, 7, 8, 9, 10, "j", "q", "k"]

var storage_stack = []
var flip_open_stack = []
var target_stacks = {"h" : [], "d" : [], "s" : [], "c" : []}
var bottom_stacks = [[], [], [], [], [], [], []]

var is_settings_loaded = false
var is_card_sliding = false
var is_options_open = false


var character_card_icons = "classic"
var num_identifiers = 2
var deck_number = 1
var suits_style = 1
var back_filenames = list_files_in_directory("res://assets/graphics/backs")
var back_side = back_filenames[0]
var data = {"character_card_icons" : character_card_icons,
			"num_identifiers" : num_identifiers,
			"deck_number" : deck_number,
			"suits_style" : suits_style,
			"back_side" : back_side}
var file = File.new()
var deck_texture_path = "res://assets/graphics/decks/" + character_card_icons + "/" + String(num_identifiers) + "_identifiers/deck_" + String(deck_number) + ".png"
var suits_texture_path = "res://assets/graphics/suits/suits_" + String(suits_style) + ".png"
var back_texture_path = "res://assets/graphics/backs/" + back_side + ".png"


func is_solved():
	var num_cards_on_targets = 0
	
	for stack_id in G.target_stacks:
		var stack = G.target_stacks[stack_id]
		num_cards_on_targets += stack.size()
	
	return num_cards_on_targets == 52


func list_files_in_directory(path):
	var files = []
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	
	while true:
		var file_name = dir.get_next()
		if file_name == "":
			break
		elif file_name.ends_with(".png") && !file_name.begins_with("."):
			file_name = file_name.replace(".png", "")
			files.append(file_name)
	
	dir.list_dir_end()
	
	return files

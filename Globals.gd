extends Node


# Declare member variables here:
const SUITS = {"h" : 0, "d" : 2, "s" : 4, "c" : 6}
const VALUES = ["a", 2, 3, 4, 5, 6, 7, 8, 9, 10, "j", "q", "k"]

var storage_stack = []
var flip_open_stack = []
var target_stacks = {"h" : [], "d" : [], "s" : [], "c" : []}
var bottom_stacks = [[], [], [], [], [], [], []]
var is_holding_card = false
var is_card_sliding = false
var flip_id


func is_solved():
	var num_cards_on_targets = 0
	
	for stack_id in G.target_stacks:
		var stack = G.target_stacks[stack_id]
		num_cards_on_targets += stack.size()
	
	return num_cards_on_targets == 52

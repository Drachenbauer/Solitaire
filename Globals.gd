extends Node


# Declare member variables here:
var storage_stack = []
var flip_open_stack = []
var target_stacks = {"h" : [], "d" : [], "s" : [], "c" : []}
var bottom_stacks = [[], [], [], [], [], [], []]
var is_card_flipped = false
var is_card_sliding = false
var flip_id

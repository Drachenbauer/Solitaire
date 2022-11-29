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

var double_click_speed = 250
var last_click = 0.0

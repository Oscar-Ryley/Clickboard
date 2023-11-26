extends Node

var clicks = 0
var employees = 0
var eupgrade = 115
var supplies = 0
var supgrade = 95
var chairs = 0
var cupgrade = 65
var tanks = 1
var tupgrade = 30

@export var spawn_object = preload("res://Employee.tscn")
var previous = 0

func _process(delta):
	if Global.employees != previous:
		var obj = spawn_object.instantiate()
		obj.position = Vector2(200, -200)
		self.add_child(obj)
		previous = Global.employees

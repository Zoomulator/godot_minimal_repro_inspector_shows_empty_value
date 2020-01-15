extends Node2D


var my_object
var my_dynamic_resource
var my_loaded_resource
var my_node

func _ready() -> void:
	my_object = MyObject.new()
	my_dynamic_resource = MyResource.new() # Won't show in inspector.
	my_loaded_resource = load("res://my_resource_01.tres")
	my_node = $Node
	assert(my_object is MyObject)
	assert(my_dynamic_resource is MyResource)
	assert(my_loaded_resource is MyResource)
	assert(my_node is Node)
	# Inspect the 'self' Object. The inspector will show [empty] for the
	# 'my_dynamic_resource' property.
	breakpoint

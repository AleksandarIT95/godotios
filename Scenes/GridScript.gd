extends GridContainer


func _ready():
	Signals.connect("from_signals", self, "_on_from_signals")
	_on_from_signals()


func gridSetup():
	for i in InventoryData.data:
		var button_instance = load("res://Scenes/Templates/InventorySlot.tscn")
		var slot = button_instance.instance()
		slot.setup(i.name, i.icon, i.amount)
		add_child(slot)


func clearing():
	for child in get_children():
		child.queue_free()


func _on_from_signals():
	clearing()
	gridSetup()

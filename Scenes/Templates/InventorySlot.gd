extends Button


signal from_button


func _ready():
	self.connect("from_button", Signals, "on_from_button")


func setup(_name, _icon, _amount):
	hint_tooltip = _name
	icon = load(_icon)
	$Label.text = str(_amount)


func _on_Inv1_pressed():
	for i in InventoryData.data:
		if hint_tooltip == i.name:
			i.amount -= 1
			$Label.text = str(i.amount)
			if i.amount <=0:
				InventoryData.data.erase(i)
				emit_signal("from_button")


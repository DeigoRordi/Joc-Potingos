extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $".."/Start.time_left > 0:
		self.text = str(int($".."/Start.time_left))
	elif $".."/Start.time_left <= 0:
		self.text = "START"
		$".."/Tiempo_texto.start(1)


func _on_Timer_timeout():
	self.text = ""

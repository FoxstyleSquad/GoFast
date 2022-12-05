extends ParallaxLayer

export (float) var BACK1_SPEED = -500

func _process(delta)-> void:
	self.motion_offset.x += BACK1_SPEED *delta

class_name PlayerState

var gcd
var player_health
var player_name
var invincible
var gcd_time

func _init():
	player_health = 10
	player_name = "Red"
	gcd = false
	invincible = false
	gcd_time = 1

func take_damage(damage):
	player_health = player_health - damage
	print("health: ", player_health)
	if player_health <= 0:
		return true
	return false

func attack():
	if (!gcd):
		gcd = true
	return gcd
	
func is_invincible():
	return invincible
	
func set_invincible(isInvincible):
	invincible = isInvincible

func is_gcd():
	return gcd

func set_gcd(isGcd):
	gcd = isGcd

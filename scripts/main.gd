extends Control


@onready var coin_texts = %CoinTexts

var orichalks = 0
var quincunx = 0
var denarii = 0
var aureal = 0


func _on_coin_button_pressed():
	# Gain an orichalk
	orichalks += 1
	
	# Group every 12 orichalks into a denar
	while orichalks >= 12:
		orichalks -= 12
		denarii += 1

	# Group every 24 denarii into an Aureal
	while denarii >= 24:
		denarii -= 24
		aureal += 1

	# Update the coin purse's text
	coin_texts.text = str(orichalks) + "ø  "
	coin_texts.text += str(denarii) + "Đ\n"
	# As in the actual game, quincunx are generally ignored
	# If this is ever used, illegal shit's afoot
	coin_texts.text += str(quincunx) + "Q  "
	coin_texts.text += str(aureal) + "₳"

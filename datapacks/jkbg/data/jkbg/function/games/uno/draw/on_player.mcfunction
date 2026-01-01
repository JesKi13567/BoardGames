$data modify storage jkbg:uno cards.id.$(mem) append from storage jkbg:uno cards.this

execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 0 run function jkbg:games/uno/player/inventory/playing

# 玩家尝试抓牌，判断牌数够不够抓
execute unless score #uno.player_loop jkbg.int matches 1 unless score #uno.cards.add jkbg.int matches 1.. if score #uno.cards.all jkbg.int matches 1.. run function jkbg:games/uno/draw/player_loop
execute unless score #uno.player_loop jkbg.int matches 1 if score #uno.cards.add jkbg.int matches 1.. if score #uno.cards.all jkbg.int >= #uno.cards.add jkbg.int run function jkbg:games/uno/draw/player_loop

execute unless score #uno.cards.add jkbg.int matches 1.. if score #uno.cards.all jkbg.int matches 0 run function jkbg:games/uno/draw/refresh_cards
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.cards.all jkbg.int < #uno.cards.add jkbg.int run function jkbg:games/uno/draw/refresh_cards

# 抓牌标记
scoreboard players reset #uno.player_loop jkbg.int

# 将+牌累计的都抓取
scoreboard players remove #uno.cards.add jkbg.int 1
execute if score #uno.cards.add jkbg.int matches ..-1 run scoreboard players set #uno.cards.add jkbg.int 0
function jkbg:games/uno/draw/player
execute if score #uno.cards.add jkbg.int matches 1.. run function jkbg:games/uno/draw/player_loop

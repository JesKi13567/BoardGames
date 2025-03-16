# uno开始前的操作
scoreboard players remove #uno.cd jkbg.int 1
execute if score #uno.cd jkbg.int matches 1 if score #uno.id.num jkbg.int matches 10 run function jkbg:games/uno/reverse
execute if score #uno.cd jkbg.int matches 1 if score #uno.id.num jkbg.int matches 11 run function jkbg:games/uno/next
execute if score #uno.cd jkbg.int matches 1 if score #uno.id.num jkbg.int matches 12 run scoreboard players add #uno.cards.add jkbg.int 2
execute if score #uno.cd jkbg.int matches 1 if score #uno.id.num jkbg.int matches 13 run scoreboard players add #uno.cards.add jkbg.int 4

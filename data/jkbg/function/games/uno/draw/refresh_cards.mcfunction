# all < add
# 卡牌轮回，使用弃牌堆
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all
execute store result score #uno.cards.dropped jkbg.int run data get storage jkbg:uno cards.dropped
scoreboard players operation #uno.remain jkbg.int = #uno.cards.all jkbg.int
scoreboard players operation #uno.remain jkbg.int += #uno.cards.dropped jkbg.int

tellraw @a [{"score": {"name": "#uno.cards.all","objective": "jkbg.int"}},"   ",{"score": {"name": "#uno.cards.dropped","objective": "jkbg.int"}}]

# 判断用标记
execute if score #uno.cards.all jkbg.int matches 0 run scoreboard players set #uno.cards.flag jkbg.int 0
execute if score #uno.cards.all jkbg.int matches 1.. run scoreboard players set #uno.cards.flag jkbg.int 1
execute if score #uno.remain jkbg.int < #uno.cards.add jkbg.int run scoreboard players set #uno.cards.flag jkbg.int -1

# 总牌数不够直接结束
execute if score #uno.cards.flag jkbg.int matches -1 run function jkbg:games/uno/end/no_remain_cards

# 原始牌堆刚好发完
execute if score #uno.cards.flag jkbg.int matches 0 run data modify storage jkbg:uno cards.all set from storage jkbg:uno cards.dropped
execute if score #uno.cards.flag jkbg.int matches 0 run data remove storage jkbg:uno cards.dropped

# 原始牌堆没发完，先发完再填充
execute if score #uno.cards.flag jkbg.int matches 1 run scoreboard players operation #uno.cards.add_ jkbg.int = #uno.cards.add jkbg.int
execute if score #uno.cards.flag jkbg.int matches 1 run scoreboard players operation #uno.cards.add jkbg.int = #uno.cards.all jkbg.int
execute if score #uno.cards.flag jkbg.int matches 1 run function jkbg:games/uno/draw/player_loop
execute if score #uno.cards.flag jkbg.int matches 1 run scoreboard players operation #uno.cards.add_ jkbg.int -= #uno.cards.all jkbg.int
execute if score #uno.cards.flag jkbg.int matches 1 run scoreboard players operation #uno.cards.add jkbg.int = #uno.cards.add_ jkbg.int
execute if score #uno.cards.flag jkbg.int matches 1 run data modify storage jkbg:uno cards.all set from storage jkbg:uno cards.dropped
execute if score #uno.cards.flag jkbg.int matches 1 run data remove storage jkbg:uno cards.dropped
execute if score #uno.cards.flag jkbg.int matches 1 run scoreboard players operation #uno.cards.add jkbg.int = #uno.cards.add_ jkbg.int
execute if score #uno.cards.flag jkbg.int matches 1 run scoreboard players set #uno.remain jkbg.int 0
execute if score #uno.cards.flag jkbg.int matches 1 run function jkbg:games/uno/draw/player_loop

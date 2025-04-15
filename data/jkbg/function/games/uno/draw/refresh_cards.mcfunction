# all < add
# 卡牌轮回，使用弃牌堆
execute store result score #uno.cards.all jkbg.int run data get storage jkbg:uno cards.all
execute store result score #uno.cards.dropped jkbg.int run data get storage jkbg:uno cards.dropped
scoreboard players operation #uno.remain jkbg.int = #uno.cards.all jkbg.int
scoreboard players operation #uno.remain jkbg.int += #uno.cards.dropped jkbg.int

# 总牌数不够直接结束
execute unless score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int matches 0 run function jkbg:games/uno/end/no_remain_cards
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int < #uno.cards.add jkbg.int run function jkbg:games/uno/end/no_remain_cards

# 续上原始牌堆
execute unless score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int matches 1.. run data modify storage jkbg:uno cards.all append from storage jkbg:uno cards.dropped[]
execute unless score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int matches 1.. run data remove storage jkbg:uno cards.dropped
execute unless score #uno.player_loop jkbg.int matches 1 unless score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int matches 1.. run function jkbg:games/uno/draw/player_loop
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int >= #uno.cards.add jkbg.int run data modify storage jkbg:uno cards.all append from storage jkbg:uno cards.dropped[]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int >= #uno.cards.add jkbg.int run data remove storage jkbg:uno cards.dropped
execute unless score #uno.player_loop jkbg.int matches 1 if score #uno.cards.add jkbg.int matches 1.. if score #uno.remain jkbg.int >= #uno.cards.add jkbg.int run function jkbg:games/uno/draw/player_loop

# 弃牌堆加入
execute if score #uno.rule.samsara jkbg.int matches 1 run data modify storage jkbg:uno cards.dropped append from storage jkbg:uno cards.this

# 系统出黑牌
execute if score #uno.state jkbg.int matches 0 if score #uno.this jkbg.int matches 513..514 run function jkbg:games/uno/first_color

# 桌面显示
scoreboard players operation #uno.id jkbg.int = #uno.this jkbg.int
scoreboard players operation #uno.id.color jkbg.int = #uno.id jkbg.int
scoreboard players operation #uno.id.color jkbg.int /= #100 jkbg.int
scoreboard players operation #uno.id.num jkbg.int = #uno.id jkbg.int
scoreboard players operation #uno.id.num jkbg.int %= #100 jkbg.int

execute store result entity @e[limit=1,type=item_display,tag=jkbg_uno_card] item.components.minecraft:custom_model_data int 1 run scoreboard players get #uno.id jkbg.int

execute if score #uno.id.color jkbg.int matches 1 run function jkbg:games/uno/show_colored {color:red}
execute if score #uno.id.color jkbg.int matches 2 run function jkbg:games/uno/show_colored {color:blue}
execute if score #uno.id.color jkbg.int matches 3 run function jkbg:games/uno/show_colored {color:green}
execute if score #uno.id.color jkbg.int matches 4 run function jkbg:games/uno/show_colored {color:yellow}

# 功能牌
execute if score #uno.state jkbg.int matches 2 if score #uno.id.num jkbg.int matches 10 run function jkbg:games/uno/reverse
execute if score #uno.state jkbg.int matches 2 if score #uno.id.num jkbg.int matches 11 run function jkbg:games/uno/next
execute if score #uno.state jkbg.int matches 2 if score #uno.id.num jkbg.int matches 12 run scoreboard players add #uno.cards.add jkbg.int 2
execute if score #uno.state jkbg.int matches 2 if score #uno.id.num jkbg.int matches 13 run scoreboard players add #uno.cards.add jkbg.int 4

# 下一玩家
execute if score #uno.state jkbg.int matches 2 run function jkbg:games/uno/next

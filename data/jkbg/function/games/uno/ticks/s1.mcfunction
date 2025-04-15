kill @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {jkbg:["uno"]}}}}]

# 发光显示当前回合玩家
execute if score #uno.state jkbg.int matches 2 run effect give @a[scores={jkbg.uno.turn=1}] glowing 30 0
execute if score #uno.state jkbg.int matches 2 as @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] unless score @s jkbg.uno.turn matches 1 run effect clear @s glowing
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 0 run title @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] actionbar ["当前回合：", {"selector": "@p[scores={jkbg.uno.turn=1}]", "color": "gold"}]
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 1.. run title @a[scores={jkbg.player.gametype=1, jkbg.player.state=1}] actionbar ["当前回合：", {"selector": "@p[scores={jkbg.uno.turn=1}]", "color": "gold"}, "  累加卡牌：", {"score": {"name": "#uno.cards.add", "objective": "jkbg.int"}, "color": "yellow"}]
# 有玩家退出直接结束游戏
execute if score #uno.state jkbg.int matches 2 unless score #uno.players1 jkbg.int = #uno.players jkbg.int run function jkbg:games/uno/end/not_enough_player

# 准备
execute if score #uno.state jkbg.int matches 0 at @e[type=item_display, tag=jkbg_uno_card, limit=1] store result score #uno.players jkbg.int if entity @a[distance=..10, scores={jkbg.player.state=0, jkbg.player.ready=1}]
execute if score #uno.state jkbg.int matches 0 at @e[type=item_display, tag=jkbg_uno_card, limit=1] as @a[distance=..10] run function jkbg:games/uno/player/inventory/ready
# 倒计时
execute if score #uno.state jkbg.int matches 0 if score #uno.players jkbg.int matches 2.. unless score #uno.state.flag jkbg.int matches 1 run scoreboard players set #uno.countdown jkbg.int 10
execute if score #uno.state jkbg.int matches 0 if score #uno.players jkbg.int matches 2.. unless score #uno.state.flag jkbg.int matches 1 run scoreboard players set #uno.state.flag jkbg.int 1
execute if score #uno.state jkbg.int matches 0 unless score #uno.state.flag jkbg.int matches 1 run scoreboard players reset #uno.countdown jkbg.int
execute if score #uno.state jkbg.int matches 0 if score #uno.state.flag jkbg.int matches 1 unless score #uno.players jkbg.int matches 2.. run scoreboard players reset #uno.state.flag
execute if score #uno.state jkbg.int matches 0 if score #uno.state.flag jkbg.int matches 1 run scoreboard players remove #uno.countdown jkbg.int 1
execute if score #uno.state jkbg.int matches 0 if score #uno.state.flag jkbg.int matches 1 if score #uno.countdown jkbg.int matches 0 run function jkbg:games/uno/init

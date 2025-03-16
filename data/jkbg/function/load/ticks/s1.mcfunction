schedule function jkbg:load/ticks/s1 1s replace
effect give @a[scores={jkbg.player.state=1..,jkbg.player.food=..19}] saturation 1 9 true
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{jkbg:["uno"]}}}}]

# uno
effect give @a[scores={jkbg.uno.turn=1}] glowing 90 0
execute as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] unless score @s jkbg.uno.turn matches 1 run effect clear @s glowing
execute if score #uno.cards.add jkbg.int matches 0 run title @a actionbar ["当前回合：",{"selector": "@p[scores={jkbg.uno.turn=1}]","color": "gold"}]
execute if score #uno.cards.add jkbg.int matches 1.. run title @a actionbar ["当前回合：",{"selector": "@p[scores={jkbg.uno.turn=1}]","color": "gold"},"  累加卡牌：",{"score": {"name": "#uno.cards.add","objective": "jkbg.int"},"color": "yellow"}]

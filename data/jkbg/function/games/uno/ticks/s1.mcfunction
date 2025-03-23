kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{jkbg:["uno"]}}}}]

#execute if score #uno.state jkbg.int matches 0 as @a[scores={jkbg.player.gametype=1,jkbg.player.state=0}] run function jkbg:games/uno/player/inventory/ready

execute if score #uno.state jkbg.int matches 2 run effect give @a[scores={jkbg.uno.turn=1}] glowing 30 0
execute if score #uno.state jkbg.int matches 2 as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] unless score @s jkbg.uno.turn matches 1 run effect clear @s glowing
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 0 run title @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] actionbar ["当前回合：",{"selector": "@p[scores={jkbg.uno.turn=1}]","color": "gold"}]
execute if score #uno.state jkbg.int matches 2 if score #uno.cards.add jkbg.int matches 1.. run title @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] actionbar ["当前回合：",{"selector": "@p[scores={jkbg.uno.turn=1}]","color": "gold"},"  累加卡牌：",{"score": {"name": "#uno.cards.add","objective": "jkbg.int"},"color": "yellow"}]

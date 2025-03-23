scoreboard players add #uno.rule.samsara jkbg.int 1
execute if score #uno.rule.samsara jkbg.int matches 2.. run scoreboard players reset #uno.rule.samsara jkbg.int

clear @s #jkbg:uno/rule[custom_data={jkbg:["uno","rule","samsara"]}]
execute unless score #uno.rule.samsara jkbg.int matches 1 run item replace entity @a[scores={jkbg.player.gametype=1,jkbg.player.state=0}] inventory.10 with apple[custom_data={jkbg:["uno","rule","samsara"]},custom_name='[{"text": "卡牌轮回","color": "green","italic": false}]',lore=['[{"text": "当前：","italic": false},{"text": "未启用","color": "red"}]']]
execute if score #uno.rule.samsara jkbg.int matches 1 run item replace entity @a[scores={jkbg.player.gametype=1,jkbg.player.state=0}] inventory.10 with golden_apple[custom_data={jkbg:["uno","rule","samsara"]},custom_name='[{"text": "卡牌轮回","color": "green","italic": false}]',lore=['[{"text": "当前：","italic": false},{"text": "已启用","color": "gold"}]']]

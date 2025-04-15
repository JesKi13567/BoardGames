# 卡牌能否轮回
scoreboard players add #uno.rule.samsara jkbg.int 1
execute if score #uno.rule.samsara jkbg.int matches 2.. run scoreboard players reset #uno.rule.samsara jkbg.int

execute unless score #uno.rule.samsara jkbg.int matches 1 run data modify entity @e[type=item_display, tag=jkbg_uno_rule_samsara, sort=nearest, limit=1] item.id set value apple
execute if score #uno.rule.samsara jkbg.int matches 1 run data modify entity @e[type=item_display, tag=jkbg_uno_rule_samsara, sort=nearest, limit=1] item.id set value golden_apple

execute unless score #uno.rule.samsara jkbg.int matches 1 run data modify entity @e[type=item_display, tag=jkbg_uno_rule_samsara, sort=nearest, limit=1] CustomName set value '{"text": "关闭", "color": "red"}'
execute if score #uno.rule.samsara jkbg.int matches 1 run data modify entity @e[type=item_display, tag=jkbg_uno_rule_samsara, sort=nearest, limit=1] CustomName set value '{"text": "开启", "color": "gold"}'

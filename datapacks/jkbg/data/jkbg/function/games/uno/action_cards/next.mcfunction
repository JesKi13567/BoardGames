# 启用质疑
execute if score #uno.state jkbg.int matches 2 if score #uno.rule.challenge jkbg.int matches 1 if score #uno.id.num jkbg.int matches 13 if score #uno.cards.add jkbg.int matches 4 if score @s jkbg.uno.cards matches 1.. run scoreboard players operation #uno.order.last jkbg.int = #uno.order jkbg.int

function jkbg:games/uno/action_cards/only/next

# 质疑选项
execute if score #uno.state jkbg.int matches 2 if score #uno.rule.challenge jkbg.int matches 1 if score #uno.id.num jkbg.int matches 13 if score #uno.cards.add jkbg.int matches 4 if score @s jkbg.uno.cards matches 1.. as @p[scores={jkbg.uno.turn=1}] run function jkbg:games/uno/action_cards/challenge/enable

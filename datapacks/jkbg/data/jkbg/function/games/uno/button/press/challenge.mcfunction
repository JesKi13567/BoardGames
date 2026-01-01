# 质疑
scoreboard players add #uno.rule.challenge jkbg.int 1
execute if score #uno.rule.challenge jkbg.int matches 2.. run scoreboard players reset #uno.rule.challenge jkbg.int

execute unless score #uno.rule.challenge jkbg.int matches 1 run data modify entity @e[type=text_display, tag=jkbg_uno_rule_challenge, limit=1] text set value {text: "关闭", color: "red"}
execute if score #uno.rule.challenge jkbg.int matches 1 run data modify entity @e[type=text_display, tag=jkbg_uno_rule_challenge, limit=1] text set value {text: "开启", color: "green"}

data modify entity @e[type=marker, tag=jkbg_uno_rule_challenge, limit=1] CustomName set from entity @e[type=text_display, tag=jkbg_uno_rule_challenge, limit=1] text

# 结束方式
scoreboard players add #uno.rule.end jkbg.int 1
execute if score #uno.rule.end jkbg.int matches 2.. run scoreboard players set #uno.rule.end jkbg.int 0

execute if score #uno.rule.end jkbg.int matches 0 run data modify entity @e[type=text_display, tag=jkbg_uno_rule_end, limit=1] text set value {text: "一人出完牌", color: "green"}
execute if score #uno.rule.end jkbg.int matches 1 run data modify entity @e[type=text_display, tag=jkbg_uno_rule_end, limit=1] text set value {text: "所有人出完牌", color: "green"}

data modify entity @e[type=marker, tag=jkbg_uno_rule_end, limit=1] CustomName set from entity @e[type=text_display, tag=jkbg_uno_rule_end, limit=1] text

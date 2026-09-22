# 抓牌层数叠加
scoreboard players add #uno.rule.draw_stack jkbg.int 1
execute if score #uno.rule.draw_stack jkbg.int matches 2.. run scoreboard players reset #uno.rule.draw_stack jkbg.int

execute unless score #uno.rule.draw_stack jkbg.int matches 1 run data modify entity @e[type=text_display, tag=jkbg_uno_rule_draw_stack, limit=1] text set value {text: "关闭", color: "red"}
execute if score #uno.rule.draw_stack jkbg.int matches 1 run data modify entity @e[type=text_display, tag=jkbg_uno_rule_draw_stack, limit=1] text set value {text: "开启", color: "green"}

data modify entity @e[type=marker, tag=jkbg_uno_rule_draw_stack, limit=1] CustomName set from entity @e[type=text_display, tag=jkbg_uno_rule_draw_stack, limit=1] text

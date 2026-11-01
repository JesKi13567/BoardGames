$scoreboard players add #$(game).rule.$(id) jkbg.int 1
$execute if score #$(game).rule.$(id) jkbg.int matches 2.. run scoreboard players set #$(game).rule.$(id) jkbg.int 0

$execute if score #$(game).rule.$(id) jkbg.int matches 0 run data modify entity @e[type=text_display, tag=jkbg_$(game)_rule_$(id), limit=1] text set value $(F)
$execute if score #$(game).rule.$(id) jkbg.int matches 1 run data modify entity @e[type=text_display, tag=jkbg_$(game)_rule_$(id), limit=1] text set value $(T)

$execute as @e[type=text_display, tag=jkbg_$(game)_rule_$(id), limit=1] run data modify entity @s CustomName set from entity @s text

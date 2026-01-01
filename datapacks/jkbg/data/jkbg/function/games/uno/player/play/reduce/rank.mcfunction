$execute as @e[tag=jkbg_rank, tag=$(order)] run data modify entity @s view_range set value 1

tag @s add jkbg_uno_temp
$data modify entity @e[type=text_display, tag=jkbg_rank, tag=player_name, tag=$(order), limit=1] text set value {selector: "@p[tag=jkbg_uno_temp]"}
$execute if score #uno.rule.end jkbg.int matches 0 run data modify entity @e[type=text_display, tag=jkbg_rank, tag=player_score, tag=$(order), limit=1] text set value {score: {name: "@p[tag=jkbg_uno_temp]", objective: "jkbg.uno.score"}, color: "gold"}
$data modify entity @e[type=item_display, tag=jkbg_rank, tag=$(order), limit=1] item.components.profile set from entity @e[type=text_display, tag=jkbg_rank, tag=player_name, tag=$(order), limit=1] text.text
tag @s remove jkbg_uno_temp

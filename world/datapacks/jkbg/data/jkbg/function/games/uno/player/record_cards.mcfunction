# 牌数
$execute store result score @s jkbg.uno.cards run data get storage jkbg:uno cards.id.$(mem)

# 重置分数
$execute if score #uno.rule.end jkbg.int matches 0 run scoreboard players reset @p[scores={jkbg.player.id=$(mem)}] jkbg.uno.score

# 卡牌全不见
$execute as @e[type=item_display, tag=jkbg_uno_number, tag=$(mem)] unless entity @s[tag=-2] run data modify entity @s view_range set value 0
$execute as @e[type=item_display, tag=jkbg_uno_number, tag=$(mem)] unless entity @s[tag=-2] run data modify entity @s item.components.minecraft:custom_model_data.strings set value ["500"]

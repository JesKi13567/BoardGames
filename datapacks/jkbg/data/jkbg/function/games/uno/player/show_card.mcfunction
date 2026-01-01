# mem为玩家id，value为卡牌标号，index为索引
$scoreboard players set #temp.index jkbg.int $(index)

$execute if score #temp.index jkbg.int matches ..9 run data modify entity @e[type=item_display, tag=jkbg_uno_number, tag=$(mem)0$(index), limit=1] view_range set value 1
$execute if score #temp.index jkbg.int matches ..9 run data modify entity @e[type=item_display, tag=jkbg_uno_number, tag=$(mem)0$(index), limit=1] item.components.minecraft:custom_model_data.strings set value ["$(value)"]

$execute if score #temp.index jkbg.int matches 10.. run data modify entity @e[type=item_display, tag=jkbg_uno_number, tag=$(mem)$(index), limit=1] view_range set value 1
$execute if score #temp.index jkbg.int matches 10.. run data modify entity @e[type=item_display, tag=jkbg_uno_number, tag=$(mem)$(index), limit=1] item.components.minecraft:custom_model_data.strings set value ["$(value)"]

# 分数持有
$scoreboard players set #temp.value jkbg.int $(value)

scoreboard players operation #temp.color jkbg.int = #temp.value jkbg.int
scoreboard players operation #temp.color jkbg.int /= #100 jkbg.int
scoreboard players operation #temp.num jkbg.int = #temp.value jkbg.int
scoreboard players operation #temp.num jkbg.int %= #100 jkbg.int

$execute if score #uno.rule.end jkbg.int matches 0 if score #temp.color jkbg.int matches 5 run scoreboard players add @p[scores={jkbg.player.id=$(mem)}] jkbg.uno.score 50
$execute if score #uno.rule.end jkbg.int matches 0 unless score #temp.color jkbg.int matches 5 if score #temp.num jkbg.int matches 10.. run scoreboard players add @p[scores={jkbg.player.id=$(mem)}] jkbg.uno.score 20
$execute if score #uno.rule.end jkbg.int matches 0 unless score #temp.color jkbg.int matches 5 if score #temp.num jkbg.int matches 0..9 run scoreboard players operation @p[scores={jkbg.player.id=$(mem)}] jkbg.uno.score += #temp.num jkbg.int

# 拥有的颜色（value后续自动刷新）
$execute if score #uno.rule.challenge jkbg.int matches 1 run scoreboard players set #temp.color jkbg.int $(value)
execute if score #uno.rule.challenge jkbg.int matches 1 store result storage jkbg:uno cards.temp.value int 1 run scoreboard players operation #temp.color jkbg.int /= #100 jkbg.int
execute if score #uno.rule.challenge jkbg.int matches 1 if score #temp.color jkbg.int matches 1..4 run function jkbg:games/uno/action_cards/challenge/has_color with storage jkbg:uno cards.temp

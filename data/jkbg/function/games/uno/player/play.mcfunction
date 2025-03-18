# 玩家牌（play）桌面牌（id）
execute store result score #uno.play jkbg.int run data get entity @s SelectedItem.components.minecraft:custom_model_data
scoreboard players operation #uno.play.color jkbg.int = #uno.play jkbg.int
scoreboard players operation #uno.play.color jkbg.int /= #100 jkbg.int
scoreboard players operation #uno.play.num jkbg.int = #uno.play jkbg.int
scoreboard players operation #uno.play.num jkbg.int %= #100 jkbg.int

# 颜色和数字都不符
execute unless score #uno.play.color jkbg.int matches 5 unless score #uno.play.color jkbg.int = #uno.id.color jkbg.int unless score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/no
# +2 +4 颜色符合，数字不符
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.play.color jkbg.int matches 5 if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 12..13 if score #uno.play.color jkbg.int = #uno.id.color jkbg.int unless score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/no
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.play.color jkbg.int matches 5 if score #uno.cards.add jkbg.int matches 0 if score #uno.id.num jkbg.int matches 12..13 if score #uno.play.color jkbg.int = #uno.id.color jkbg.int run function jkbg:games/uno/player/play/yes
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.play.color jkbg.int matches 5 if score #uno.id.num jkbg.int matches 12..13 if score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/yes
# 其他符合的情况
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.play.color jkbg.int matches 5 unless score #uno.id.num jkbg.int matches 12..13 if score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/yes
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.play.color jkbg.int matches 5 unless score #uno.id.num jkbg.int matches 12..13 if score #uno.play.color jkbg.int = #uno.id.color jkbg.int run function jkbg:games/uno/player/play/yes
# 万能牌
execute if score #uno.play jkbg.int matches 513 run function jkbg:games/uno/player/play/color_use
execute if score #uno.play jkbg.int matches 514 if score #uno.id.num jkbg.int matches 12 run function jkbg:games/uno/player/play/no
execute if score #uno.play jkbg.int matches 514 unless score #uno.id.num jkbg.int matches 12 run function jkbg:games/uno/player/play/color_use
execute if score #uno.play jkbg.int matches 500 run function jkbg:games/uno/player/play/draw

# 打出牌标记
scoreboard players reset #uno.yes jkbg.int

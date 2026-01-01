# 玩家牌（play）桌面牌（id）
function jkbg:games/uno/player/play_id with storage jkbg:uno cards.score
scoreboard players operation #uno.play.color jkbg.int = #uno.play jkbg.int
scoreboard players operation #uno.play.color jkbg.int /= #100 jkbg.int
scoreboard players operation #uno.play.num jkbg.int = #uno.play jkbg.int
scoreboard players operation #uno.play.num jkbg.int %= #100 jkbg.int

# 打出牌标记
scoreboard players reset #uno.yes jkbg.int

# 万能牌 +4/变色
execute if score #uno.play jkbg.int matches 513.. as @s[scores={jkbg.uno.color=0}] run function jkbg:games/uno/player/color/no
execute unless score #uno.yes jkbg.int matches 1 if score #uno.play jkbg.int matches 513 if score #uno.cards.add jkbg.int matches 0 run function jkbg:games/uno/player/color/yes
execute unless score #uno.yes jkbg.int matches 1 if score #uno.play jkbg.int matches 513 if score #uno.cards.add jkbg.int matches 1.. if score #uno.rule.draw_stack jkbg.int matches 1 run function jkbg:games/uno/player/color/yes
execute unless score #uno.yes jkbg.int matches 1 if score #uno.play jkbg.int matches 514 if score #uno.cards.add jkbg.int matches 0 run function jkbg:games/uno/player/color/yes
# +2/+4
execute unless score #uno.yes jkbg.int matches 1 if score #uno.id.num jkbg.int matches 12..13 if score #uno.cards.add jkbg.int matches 0 if score #uno.play.color jkbg.int = #uno.id.color jkbg.int run function jkbg:games/uno/player/play/yes
execute unless score #uno.yes jkbg.int matches 1 if score #uno.id.num jkbg.int matches 12..13 if score #uno.cards.add jkbg.int matches 0 if score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/yes
execute unless score #uno.yes jkbg.int matches 1 if score #uno.id.num jkbg.int matches 12..13 if score #uno.cards.add jkbg.int matches 1.. if score #uno.rule.draw_stack jkbg.int matches 1 if score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/yes
# 常规牌
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.id.num jkbg.int matches 12..13 if score #uno.play.color jkbg.int = #uno.id.color jkbg.int run function jkbg:games/uno/player/play/yes
execute unless score #uno.yes jkbg.int matches 1 unless score #uno.id.num jkbg.int matches 12..13 if score #uno.play.num jkbg.int = #uno.id.num jkbg.int run function jkbg:games/uno/player/play/yes
# 其他情况均不可出
execute unless score #uno.yes jkbg.int matches 1 run function jkbg:games/uno/player/play/no

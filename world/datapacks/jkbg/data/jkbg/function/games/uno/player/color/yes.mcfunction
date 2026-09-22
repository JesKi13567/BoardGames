# 变色前
execute if score #uno.state jkbg.int matches 2 if score #uno.rule.challenge jkbg.int matches 1 if score #uno.play.num jkbg.int matches 13 run scoreboard players operation #uno.id.color.last jkbg.int = #uno.id.color jkbg.int

# 变色，只变第一位
scoreboard players operation #uno.id.color jkbg.int = @s jkbg.uno.color
scoreboard players operation #uno.id.color jkbg.int *= #100 jkbg.int
scoreboard players operation #uno.id.color jkbg.int += #uno.play.num jkbg.int
scoreboard players operation #uno.this jkbg.int = #uno.id.color jkbg.int
function jkbg:games/uno/player/play/yes

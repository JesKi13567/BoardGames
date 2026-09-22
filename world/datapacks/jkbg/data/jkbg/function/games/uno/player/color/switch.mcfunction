playsound block.note_block.bell block @a

# 切换颜色
scoreboard players add @s jkbg.uno.color 1
scoreboard players set @s[scores={jkbg.uno.color=5..}] jkbg.uno.color 1
function jkbg:games/uno/player/color/show with storage jkbg:uno cards.temp

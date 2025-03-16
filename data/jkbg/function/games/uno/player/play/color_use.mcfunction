# 正在打出变色卡
execute at @s[scores={jkbg.uno.color=0}] run playsound entity.villager.ambient player @s
tellraw @s[scores={jkbg.uno.color=0}] ["",{"text": "【JKの桌游】","color": "green"},{"text": "使用前，请在物品栏第九格选择颜色。","color": "yellow"}]

execute as @s[scores={jkbg.uno.color=1..4}] run scoreboard players operation #uno.id.color jkbg.int = @s jkbg.uno.color
execute as @s[scores={jkbg.uno.color=1..4}] run scoreboard players operation #uno.id.color jkbg.int *= #100 jkbg.int
execute as @s[scores={jkbg.uno.color=1..4}] run scoreboard players operation #uno.id.color jkbg.int += #uno.play.num jkbg.int
execute as @s[scores={jkbg.uno.color=1..4}] run scoreboard players operation #uno.this jkbg.int = #uno.id.color jkbg.int
execute as @s[scores={jkbg.uno.color=1..4}] run function jkbg:games/uno/player/play/yes

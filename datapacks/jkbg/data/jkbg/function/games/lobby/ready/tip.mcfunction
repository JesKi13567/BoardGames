# 游戏准备提示
title @s[scores={jkbg.player.ready=0}] actionbar [{text: "踩在", color: "gold"}, {translate: "block.minecraft.lime_concrete", color: "green"}, "上来准备游戏！"]
title @s[scores={jkbg.player.ready=1}] actionbar [{text: "你已准备！当前人数：", color: "green"}, {"score": {"name": "#lobby.players.ready", "objective": "jkbg.int"}, color: "gold"}]

scoreboard players set @s jkbg.player.ready 0
execute if block ~ ~-1 ~ lime_concrete run scoreboard players set @s jkbg.player.ready 1
execute if block ~ ~-2 ~ lime_concrete run scoreboard players set @s jkbg.player.ready 1

# 游戏准备提示
title @s[scores={jkbg.player.ready=0}] actionbar [{translate: "jkbg.lobby.tip.ready.no", with: [{translate: "block.minecraft.lime_concrete", color: "green"}], color: "gold"}]
title @s[scores={jkbg.player.ready=1}] actionbar [{translate: "jkbg.lobby.tip.ready.yes", color: "green"}]

scoreboard players set @s jkbg.player.ready 0
execute if block ~ 99 ~ lime_concrete run scoreboard players set @s jkbg.player.ready 1

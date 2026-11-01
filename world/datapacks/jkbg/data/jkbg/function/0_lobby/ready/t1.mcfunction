# 设置 & 开始游戏
execute as @e[type=interaction, tag=jkbg_lobby_button] at @s if data entity @s interaction run function jkbg:0_lobby/button/global
data modify entity @e[type=text_display, tag=jkbg_lobby_button, tag=start, limit=1] text set value ["", {translate: "jkbg.lobby.start", color: "gold"}, "\n", {translate: "jkbg.lobby.player_count"}, {score: {name: "#lobby.players.ready", objective: "jkbg.int"}, color: "green"}]

# 准备
scoreboard players set @a[gamemode=!adventure] jkbg.player.ready 0
execute store result score #lobby.players.ready jkbg.int if entity @a[scores={jkbg.player.ready=1}]
execute if score #game.type jkbg.int matches 1 as @a[gamemode=adventure] at @s run function jkbg:0_lobby/ready/tip

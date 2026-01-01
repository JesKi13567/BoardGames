# 设置
execute if score #lobby.gametype jkbg.int matches 1 as @e[type=interaction, tag=jkbg_uno_button] at @s run function jkbg:games/uno/button/global

# 准备
execute store result score #lobby.players.ready jkbg.int if entity @a[scores={jkbg.player.ready=1}]
execute if score #lobby.gametype jkbg.int matches 1 as @a at @s run function jkbg:games/lobby/ready/tip

schedule function jkbg:ticks/t1 1t replace

scoreboard players reset @a[scores={jkbg.player.death=1..}] jkbg.player.leave_game
execute as @a unless score @s jkbg.player.leave_game matches 0.. run function jkbg:0_lobby/leave_game

# 游戏状态
execute if score #lobby.state jkbg.int matches 0 run function jkbg:0_lobby/ready/t1
execute if score #lobby.state jkbg.int matches 1 run function jkbg:ticks/in_game/t1

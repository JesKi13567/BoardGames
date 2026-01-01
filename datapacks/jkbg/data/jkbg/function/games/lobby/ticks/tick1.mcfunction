schedule function jkbg:games/lobby/ticks/tick1 1t replace

execute as @a unless score @s jkbg.player.leave_game matches 0.. run function jkbg:games/lobby/leave_game
execute as @a[scores={jkbg.player.death=1..}] run function jkbg:games/lobby/leave_game

# 游戏状态
execute if score #lobby.state jkbg.int matches 0 run function jkbg:games/lobby/ready/tick1
execute if score #lobby.state jkbg.int matches 1 run function jkbg:games/lobby/start/tick1

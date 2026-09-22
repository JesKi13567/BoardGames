# 非玩家就旁观
execute as @a[gamemode=!spectator] unless score @s jkbg.player.id matches 1.. run gamemode spectator @s

# 离开游戏
scoreboard players enable @a[scores={jkbg.player.id=1..}] jkbg.leave
execute as @a[scores={jkbg.player.id=1.., jkbg.leave=1..}] run function jkbg:games/lobby/end

# UNO
execute if score #lobby.gametype jkbg.int matches 1 if score #uno.state jkbg.int matches 2 run function jkbg:games/uno/ticks/sec1_state2

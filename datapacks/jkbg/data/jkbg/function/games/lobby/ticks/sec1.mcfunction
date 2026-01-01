schedule function jkbg:games/lobby/ticks/sec1 1s replace

# 清理垃圾
kill @e[type=!#jkbg:safe]

# 仅能在立方体内
execute positioned -16 100 -16 as @a unless entity @s[dx=30, dy=30, dz=30] run function jkbg:games/lobby/out_of_cube

# 夜视
effect give @a night_vision infinite 0 true

# 游戏状态
execute if score #lobby.state jkbg.int matches 0 run function jkbg:games/lobby/ready/sec1
execute if score #lobby.state jkbg.int matches 1 run function jkbg:games/lobby/start/sec1

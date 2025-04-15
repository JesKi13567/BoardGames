schedule function jkbg:load/ticks/s1 1s replace
effect give @a[scores={jkbg.player.state=1.., jkbg.player.food=..19}] saturation 1 9 true
tag @a[tag=!jkbg_admin, gamemode=creative] add jkbg_admin
execute as @a[tag=jkbg_end] run function jkbg:games/lobby/end

# 跑远了取消准备
execute as @a[scores={jkbg.player.ready=1}] at @s unless entity @e[type=item_display, tag=jkbg_table, distance=..10] run function jkbg:games/lobby/cancel

# 离开游戏
scoreboard players enable @a jkbg.leave
execute as @a[scores={jkbg.leave=1..}] run function jkbg:games/lobby/reset

# uno
function jkbg:games/uno/ticks/s1

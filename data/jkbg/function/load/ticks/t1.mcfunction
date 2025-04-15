schedule function jkbg:load/ticks/t1 1t replace
execute as @a unless score @s jkbg.player.leave_game matches 0.. run function jkbg:games/lobby/init
execute as @a[scores={jkbg.player.death=1..}] run function jkbg:games/lobby/reset
execute as @a[scores={jkbg.player.leave_game=1..}] run function jkbg:games/lobby/reset
execute as @a[scores={jkbg.player.drop=1..}] run function jkbg:games/lobby/drop

# uno
function jkbg:games/uno/ticks/t1

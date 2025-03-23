schedule function jkbg:load/ticks/t1 1t replace
execute as @a[scores={jkbg.player.death=1..}] run function jkbg:games/lobby/on_death
execute as @a[scores={jkbg.player.leave_game=1..}] run function jkbg:games/lobby/leavegame
execute as @a[scores={jkbg.player.use=1..}] run function jkbg:games/lobby/use
execute as @a[scores={jkbg.player.drop=1..}] run function jkbg:games/lobby/drop

function jkbg:games/uno/ticks/t1

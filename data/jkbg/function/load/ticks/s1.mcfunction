schedule function jkbg:load/ticks/s1 1s replace
effect give @a[scores={jkbg.player.state=1..,jkbg.player.food=..19}] saturation 1 9 true
tag @a[tag=!jkbg_admin,gamemode=creative] add jkbg_admin
execute as @a[tag=jkbg_end] run function jkbg:games/lobby/end

# uno
function jkbg:games/uno/ticks/s1

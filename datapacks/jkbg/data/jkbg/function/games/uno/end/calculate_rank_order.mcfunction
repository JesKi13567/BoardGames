scoreboard players set #uno.id.score jkbg.int 100000000
scoreboard players operation #uno.id.score jkbg.int < @a[scores={jkbg.player.id=1..}] jkbg.uno.score
execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.uno.score = #uno.id.score jkbg.int run tag @s add jkbg_uno_temp
execute as @p[tag=jkbg_uno_temp] run function jkbg:games/uno/end/rank_order

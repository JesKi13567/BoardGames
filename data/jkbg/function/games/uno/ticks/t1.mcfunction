execute as @e[limit=1,type=marker,tag=jkbg_uno_init] at @s run function jkbg:games/uno/table
execute if score #uno.cd jkbg.int matches 1.. run function jkbg:games/uno/before_start
execute if score #uno.cd jkbg.int matches ..0 as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] run function jkbg:games/uno/player/global
#execute if score #uno.state jkbg.int matches 0 run function jkbg:games/uno/player/inventory/ready_settings/1t

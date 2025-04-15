scoreboard players reset @s jkbg.player.drop
execute as @s[scores={jkbg.player.gametype=1, jkbg.player.state=1}] run function jkbg:games/uno/player/inventory/playing

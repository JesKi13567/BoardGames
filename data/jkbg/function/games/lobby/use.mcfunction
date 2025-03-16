scoreboard players reset @s jkbg.player.use
execute as @s[scores={jkbg.player.gametype=1,jkbg.player.state=1,jkbg.uno.turn=1}] run function jkbg:games/uno/player/play

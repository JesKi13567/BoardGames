advancement revoke @s only jkbg:using
execute if score #uno.cd jkbg.int matches 0 as @s[scores={jkbg.player.gametype=1, jkbg.player.state=1, jkbg.uno.turn=1}] run function jkbg:games/uno/player/play

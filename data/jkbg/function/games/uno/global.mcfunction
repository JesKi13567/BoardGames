execute if score #uno.cd jkbg.int matches 1.. run function jkbg:games/uno/before_start
execute if score #uno.cd jkbg.int matches ..0 as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] run function jkbg:games/uno/player/global

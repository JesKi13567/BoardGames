# 下一位
execute unless score #uno.reverse jkbg.int matches 1 run scoreboard players add #uno.order jkbg.int 1
execute unless score #uno.reverse jkbg.int matches 1 if score #uno.order jkbg.int > #uno.players jkbg.int run scoreboard players set #uno.order jkbg.int 1

execute if score #uno.reverse jkbg.int matches 1 run scoreboard players remove #uno.order jkbg.int 1
execute if score #uno.reverse jkbg.int matches 1 if score #uno.order jkbg.int < #uno.players jkbg.int run scoreboard players operation #uno.order jkbg.int = #uno.players jkbg.int

execute if score #uno.state jkbg.int matches 2 as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] unless score @s jkbg.uno.order = #uno.order jkbg.int run scoreboard players set @s jkbg.uno.turn 0
execute if score #uno.state jkbg.int matches 2 as @a[scores={jkbg.player.gametype=1,jkbg.player.state=1}] if score @s jkbg.uno.order = #uno.order jkbg.int run scoreboard players set @s jkbg.uno.turn 1
execute if score #uno.state jkbg.int matches 2 as @p[scores={jkbg.uno.turn=1}] at @s run playsound entity.experience_orb.pickup player @s

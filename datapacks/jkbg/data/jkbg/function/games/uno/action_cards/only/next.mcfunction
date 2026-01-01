#tellraw @a ["之前：", {selector: "@p[scores={jkbg.uno.turn=1}]"}]

# 下一位
execute as @a at @s run playsound entity.experience_orb.pickup player @s

scoreboard players add #uno.order jkbg.int 1
execute if score #uno.reverse jkbg.int matches 1 run scoreboard players remove #uno.order jkbg.int 2
execute if score #uno.order jkbg.int > #lobby.players.total jkbg.int run scoreboard players set #uno.order jkbg.int 1
execute if score #uno.order jkbg.int matches ..0 run scoreboard players operation #uno.order jkbg.int = #lobby.players.total jkbg.int

# 确认出牌玩家
scoreboard players reset * jkbg.uno.turn
execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.player.id = #uno.order jkbg.int run scoreboard players set @s jkbg.uno.turn 1

#tellraw @a ["之后：", {selector: "@p[scores={jkbg.uno.turn=1}]"}]

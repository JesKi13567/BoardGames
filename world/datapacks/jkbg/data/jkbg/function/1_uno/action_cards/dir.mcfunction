# 顺位移动：dir = 1 下一位 / -1 上一位
$scoreboard players set #uno.dir jkbg.int $(dir)

# 音效
execute as @a at @s run playsound entity.experience_orb.pickup player @s

# 计算顺位：+dir，reverse 时再 -2*dir
scoreboard players operation #uno.order jkbg.int += #uno.dir jkbg.int
scoreboard players operation #uno.dir jkbg.int += #uno.dir jkbg.int
execute if score #uno.reverse jkbg.int matches 1 run scoreboard players operation #uno.order jkbg.int -= #uno.dir jkbg.int

# 回绕
execute if score #uno.order jkbg.int > #lobby.players.total jkbg.int run scoreboard players set #uno.order jkbg.int 1
execute if score #uno.order jkbg.int matches ..0 run scoreboard players operation #uno.order jkbg.int = #lobby.players.total jkbg.int

# 当前回合玩家
scoreboard players reset * jkbg.uno.turn
scoreboard players display name @a jkbg.player.id
execute as @a[scores={jkbg.player.id=1..}] if score @s jkbg.player.id = #uno.order jkbg.int run scoreboard players set @s jkbg.uno.turn 1
scoreboard players display name @p[scores={jkbg.uno.turn=1}] jkbg.player.id [{text: "→", color: "gold"}, {selector: "@p[scores={jkbg.uno.turn=1}]"}]

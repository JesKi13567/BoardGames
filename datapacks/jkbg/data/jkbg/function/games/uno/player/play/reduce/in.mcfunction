function jkbg:games/uno/end/rank_order

# 刷新其他玩家位置及卡牌归属
execute as @p[scores={jkbg.player.id=2}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 2, new: 1}
execute as @p[scores={jkbg.player.id=3}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 3, new: 2}
execute as @p[scores={jkbg.player.id=4}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 4, new: 3}
execute as @p[scores={jkbg.player.id=5}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 5, new: 4}
execute as @p[scores={jkbg.player.id=6}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 6, new: 5}
execute as @p[scores={jkbg.player.id=7}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 7, new: 6}
execute as @p[scores={jkbg.player.id=8}] if score @s jkbg.player.id > #uno.id.out jkbg.int run function jkbg:games/uno/player/play/reduce/refresh {cur: 8, new: 7}

# 变色按钮
scoreboard players set @a[scores={jkbg.player.id=1..}] jkbg.uno.color 0
execute as @e[type=item_display, tag=jkbg_uno_number, tag=-2] run data merge entity @s {item: {id: "white_wool"}, CustomName: "变色"}

# 传送走
execute if score #uno.group jkbg.int matches 1 run tp @p[scores={jkbg.player.id=1}] 0.0 100.0 -7.0 0 0
execute if score #uno.group jkbg.int matches 1 run tp @p[scores={jkbg.player.id=2}] -7.0 100.0 0.0 270 0
execute if score #uno.group jkbg.int matches 1 run tp @p[scores={jkbg.player.id=3}] 0.0 100.0 7.0 180 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=1}] 4.0 100.0 -11.0 0 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=2}] -4.0 100.0 -11.0 0 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=3}] -11.0 100.0 -4.0 270 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=4}] -11.0 100.0 4.0 270 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=5}] -4.0 100.0 11.0 180 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=6}] 4.0 100.0 11.0 180 0
execute if score #uno.group jkbg.int matches 2 run tp @p[scores={jkbg.player.id=7}] 11.0 100.0 4.0 90 0

# 总人数减少
scoreboard players remove #lobby.players.total jkbg.int 1
function jkbg:games/uno/action_cards/only/prev

# 没人了
execute if score #lobby.players.total jkbg.int matches 1 as @p[scores={jkbg.player.id=1}] run function jkbg:games/uno/player/play/reduce/in
execute if score #lobby.players.total jkbg.int matches ..0 run function jkbg:games/lobby/end

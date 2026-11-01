# 出完牌的玩家
function jkbg:1_uno/end/rank_order

# 其他玩家
function jkbg:1_uno/end/calculate_rank_order
execute if entity @a[scores={jkbg.player.id=1..}] run function jkbg:1_uno/end/calculate_rank_order
execute if entity @a[scores={jkbg.player.id=1..}] run function jkbg:1_uno/end/calculate_rank_order
execute if entity @a[scores={jkbg.player.id=1..}] run function jkbg:1_uno/end/calculate_rank_order
execute if entity @a[scores={jkbg.player.id=1..}] run function jkbg:1_uno/end/calculate_rank_order
execute if entity @a[scores={jkbg.player.id=1..}] run function jkbg:1_uno/end/calculate_rank_order
execute if entity @a[scores={jkbg.player.id=1..}] run function jkbg:1_uno/end/calculate_rank_order

# 游戏真正结束
function jkbg:0_lobby/end

execute as @s[tag=draw] run return 0
execute as @s[tag=wild] run return 0
execute as @s[tag=challenge] run return 0

# 被点击的槽位（slot 0~39）→ 手牌索引，与 show_card 渲染用的索引一一对应
# 兜底：万一没有任何槽位标签匹配，索引留成 99（取不到牌 → 按空槽处理）
data modify storage jkbg:uno cards.temp.index set value 99
$execute as @s[tag=$(mem)00] run data modify storage jkbg:uno cards.temp.index set value 0
$execute as @s[tag=$(mem)01] run data modify storage jkbg:uno cards.temp.index set value 1
$execute as @s[tag=$(mem)02] run data modify storage jkbg:uno cards.temp.index set value 2
$execute as @s[tag=$(mem)03] run data modify storage jkbg:uno cards.temp.index set value 3
$execute as @s[tag=$(mem)04] run data modify storage jkbg:uno cards.temp.index set value 4
$execute as @s[tag=$(mem)05] run data modify storage jkbg:uno cards.temp.index set value 5
$execute as @s[tag=$(mem)06] run data modify storage jkbg:uno cards.temp.index set value 6
$execute as @s[tag=$(mem)07] run data modify storage jkbg:uno cards.temp.index set value 7
$execute as @s[tag=$(mem)08] run data modify storage jkbg:uno cards.temp.index set value 8
$execute as @s[tag=$(mem)09] run data modify storage jkbg:uno cards.temp.index set value 9
$execute as @s[tag=$(mem)10] run data modify storage jkbg:uno cards.temp.index set value 10
$execute as @s[tag=$(mem)11] run data modify storage jkbg:uno cards.temp.index set value 11
$execute as @s[tag=$(mem)12] run data modify storage jkbg:uno cards.temp.index set value 12
$execute as @s[tag=$(mem)13] run data modify storage jkbg:uno cards.temp.index set value 13
$execute as @s[tag=$(mem)14] run data modify storage jkbg:uno cards.temp.index set value 14
$execute as @s[tag=$(mem)15] run data modify storage jkbg:uno cards.temp.index set value 15
$execute as @s[tag=$(mem)16] run data modify storage jkbg:uno cards.temp.index set value 16
$execute as @s[tag=$(mem)17] run data modify storage jkbg:uno cards.temp.index set value 17
$execute as @s[tag=$(mem)18] run data modify storage jkbg:uno cards.temp.index set value 18
$execute as @s[tag=$(mem)19] run data modify storage jkbg:uno cards.temp.index set value 19
$execute as @s[tag=$(mem)20] run data modify storage jkbg:uno cards.temp.index set value 20
$execute as @s[tag=$(mem)21] run data modify storage jkbg:uno cards.temp.index set value 21
$execute as @s[tag=$(mem)22] run data modify storage jkbg:uno cards.temp.index set value 22
$execute as @s[tag=$(mem)23] run data modify storage jkbg:uno cards.temp.index set value 23
$execute as @s[tag=$(mem)24] run data modify storage jkbg:uno cards.temp.index set value 24
$execute as @s[tag=$(mem)25] run data modify storage jkbg:uno cards.temp.index set value 25
$execute as @s[tag=$(mem)26] run data modify storage jkbg:uno cards.temp.index set value 26
$execute as @s[tag=$(mem)27] run data modify storage jkbg:uno cards.temp.index set value 27
$execute as @s[tag=$(mem)28] run data modify storage jkbg:uno cards.temp.index set value 28
$execute as @s[tag=$(mem)29] run data modify storage jkbg:uno cards.temp.index set value 29
$execute as @s[tag=$(mem)30] run data modify storage jkbg:uno cards.temp.index set value 30
$execute as @s[tag=$(mem)31] run data modify storage jkbg:uno cards.temp.index set value 31
$execute as @s[tag=$(mem)32] run data modify storage jkbg:uno cards.temp.index set value 32
$execute as @s[tag=$(mem)33] run data modify storage jkbg:uno cards.temp.index set value 33
$execute as @s[tag=$(mem)34] run data modify storage jkbg:uno cards.temp.index set value 34
$execute as @s[tag=$(mem)35] run data modify storage jkbg:uno cards.temp.index set value 35
$execute as @s[tag=$(mem)36] run data modify storage jkbg:uno cards.temp.index set value 36
$execute as @s[tag=$(mem)37] run data modify storage jkbg:uno cards.temp.index set value 37
$execute as @s[tag=$(mem)38] run data modify storage jkbg:uno cards.temp.index set value 38
$execute as @s[tag=$(mem)39] run data modify storage jkbg:uno cards.temp.index set value 39

# 按索引取出手牌数值（没有牌 → 空槽位）
data remove storage jkbg:uno cards.temp.value
function jkbg:1_uno/player/get_from_index with storage jkbg:uno cards.temp
execute unless data storage jkbg:uno cards.temp.value run scoreboard players set #uno.play jkbg.int 500
execute unless data storage jkbg:uno cards.temp.value on target run function jkbg:1_uno/player/play/no
execute unless data storage jkbg:uno cards.temp.value run return 0

# 最终出牌
execute store result storage jkbg:uno cards.score.id int 1 run data get storage jkbg:uno cards.temp.value
execute on target run function jkbg:1_uno/player/play

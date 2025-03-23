# 打出牌标记
scoreboard players set #uno.yes jkbg.int 1

# 匹配id出牌
execute store result storage jkbg:uno cards.temp.value int 1 run scoreboard players get #uno.play jkbg.int

# 找到当前id牌的索引
data modify storage jkbg:uno cards.temp.value_ set from storage jkbg:uno cards.temp.value
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @s jkbg.uno.order
function jkbg:games/uno/player/play/temp_list with storage jkbg:uno cards.temp

execute store result score #temp jkbg.int run data get storage jkbg:uno cards.temp.list
scoreboard players set #uno.index jkbg.int 0
function jkbg:games/uno/player/play/find_index_loop

# 修改列表
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @s jkbg.uno.order
function jkbg:games/uno/player/play/remove_from_index with storage jkbg:uno cards.temp

# 恢复
scoreboard players set @s[scores={jkbg.uno.color=1..4}] jkbg.uno.color 0

# 刷新
function jkbg:games/uno/player/inventory/playing

# 检测是否打完卡牌
execute if score @s jkbg.uno.cards matches 1 run say UNO
execute if score @s jkbg.uno.cards matches 0 run function jkbg:games/uno/end/over

# 更新桌面卡牌
execute unless score #uno.play jkbg.int matches 500.. run scoreboard players operation #uno.this jkbg.int = #uno.play jkbg.int
function jkbg:games/uno/show

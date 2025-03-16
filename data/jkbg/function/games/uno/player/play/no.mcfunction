# 不匹配
execute at @s run playsound entity.villager.no player @s
execute if score #uno.cards.add jkbg.int matches 0 run tellraw @s ["",{"text": "【JKの桌游】","color": "green"},{"text": "不可出此牌！","color": "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 12 run tellraw @s ["",{"text": "【JKの桌游】","color": "green"},{"text": "你必须打出 +2 牌！","color": "red"}]
execute if score #uno.cards.add jkbg.int matches 1.. if score #uno.id.num jkbg.int matches 13 run tellraw @s ["",{"text": "【JKの桌游】","color": "green"},{"text": "你必须打出 +4 牌！","color": "red"}]

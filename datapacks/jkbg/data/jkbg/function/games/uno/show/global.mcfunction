# 系统出牌
execute if score #uno.state jkbg.int matches 1 run function jkbg:games/uno/action_cards/1st

# 桌面显示
scoreboard players operation #uno.id jkbg.int = #uno.this jkbg.int
scoreboard players operation #uno.id.color jkbg.int = #uno.id jkbg.int
scoreboard players operation #uno.id.color jkbg.int /= #100 jkbg.int
scoreboard players operation #uno.id.num jkbg.int = #uno.id jkbg.int
scoreboard players operation #uno.id.num jkbg.int %= #100 jkbg.int

execute store result storage jkbg:uno cards.score.id int 1 run scoreboard players get #uno.id jkbg.int
function jkbg:games/uno/show/id with storage jkbg:uno cards.score

execute if score #uno.id.color jkbg.int matches 1 run function jkbg:games/uno/show/colored {color: red}
execute if score #uno.id.color jkbg.int matches 2 run function jkbg:games/uno/show/colored {color: blue}
execute if score #uno.id.color jkbg.int matches 3 run function jkbg:games/uno/show/colored {color: green}
execute if score #uno.id.color jkbg.int matches 4 run function jkbg:games/uno/show/colored {color: yellow}

# 功能牌
execute if score #uno.id.num jkbg.int matches 10 run function jkbg:games/uno/action_cards/reverse
execute if score #uno.id.num jkbg.int matches 11 run function jkbg:games/uno/action_cards/skip
execute if score #uno.id.num jkbg.int matches 12 run function jkbg:games/uno/action_cards/p2
execute if score #uno.id.num jkbg.int matches 13 run function jkbg:games/uno/action_cards/p4
scoreboard players operation #uno.cards.draw.show jkbg.int = #uno.cards.add jkbg.int

# 放入弃牌堆
execute if score #uno.id.num jkbg.int matches 13..14 run scoreboard players set #uno.temp.color jkbg.int 5
execute unless score #uno.id.num jkbg.int matches 13..14 run scoreboard players operation #uno.temp.color jkbg.int = #uno.id.color jkbg.int
scoreboard players operation #uno.temp.color jkbg.int *= #100 jkbg.int
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players operation #uno.temp.color jkbg.int += #uno.id.num jkbg.int
data modify storage jkbg:uno cards.dropped append from storage jkbg:uno cards.temp.mem

# 下一玩家
function jkbg:games/uno/action_cards/next

# 玩家可以出牌
scoreboard players set #uno.state jkbg.int 2

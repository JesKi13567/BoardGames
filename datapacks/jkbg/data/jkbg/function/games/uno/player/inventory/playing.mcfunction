# 使用卡牌、抓牌 -> 刷新
execute unless score #uno.cards.draw.show jkbg.int matches 1.. run scoreboard players set #uno.cards.draw.show jkbg.int 1
execute as @s[scores={jkbg.uno.draw=1}] run tellraw @a ["", {text: "【桌游】", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}}, {text: " 抓牌 ", color: "gray"}, {"score": {"name": "#uno.cards.draw.show", "objective": "jkbg.int"}, color: "yellow"}, {text: " 张。", color: "gray"}]
scoreboard players reset #uno.cards.draw.show jkbg.int

# 记录卡牌数
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @s jkbg.player.id
function jkbg:games/uno/player/record_cards with storage jkbg:uno cards.temp

# 记录颜色
scoreboard players reset #uno.id.color.1 jkbg.int
scoreboard players reset #uno.id.color.2 jkbg.int
scoreboard players reset #uno.id.color.3 jkbg.int
scoreboard players reset #uno.id.color.4 jkbg.int

# 遍历卡牌
scoreboard players operation #temp jkbg.int = @s jkbg.uno.cards
function jkbg:games/uno/player/inventory/playing_loop

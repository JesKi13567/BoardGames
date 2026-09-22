# 启用质疑
scoreboard players set @s jkbg.uno.challenge 1

kill @e[type=marker, tag=jkbg_uno_last_color]

execute if score #uno.id.color.last jkbg.int matches 1 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {text: "红色", color: "red"}}
execute if score #uno.id.color.last jkbg.int matches 2 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {text: "蓝色", color: "blue"}}
execute if score #uno.id.color.last jkbg.int matches 3 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {text: "绿色", color: "green"}}
execute if score #uno.id.color.last jkbg.int matches 4 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {text: "黄色", color: "yellow"}}

tellraw @s ["", {text: "【桌游】", color: "green"}, {text: "若你认为上家手中仍有", color: "gold"}, {selector: "@e[type=marker, tag=jkbg_uno_last_color, limit=1]", hover_event: {action: "show_text", value: ""}}, {text: "牌，可低头选择质疑。\n", color: "gold"}, {text: "【桌游】", color: "green"}, {text: "质疑成功，其抓 4 张牌；质疑失败，你抓 6 张牌。\n", color: "gold"}, {text: "【桌游】", color: "green"}, {text: "若不质疑，则正常抓牌或继续叠加。", color: "gold"}]

# 是否可以质疑成功
scoreboard players reset #uno.id.color.challenge jkbg.int
execute if score #uno.id.color.last jkbg.int matches 1 if score #uno.id.color.1 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1
execute if score #uno.id.color.last jkbg.int matches 2 if score #uno.id.color.2 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1
execute if score #uno.id.color.last jkbg.int matches 3 if score #uno.id.color.3 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1
execute if score #uno.id.color.last jkbg.int matches 4 if score #uno.id.color.4 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1

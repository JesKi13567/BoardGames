# 启用质疑
scoreboard players set @s jkbg.uno.challenge 1

kill @e[type=marker, tag=jkbg_uno_last_color]

execute if score #uno.id.color.last jkbg.int matches 1 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {translate: "jkbg.color.red", color: "red"}}
execute if score #uno.id.color.last jkbg.int matches 2 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {translate: "jkbg.color.blue", color: "blue"}}
execute if score #uno.id.color.last jkbg.int matches 3 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {translate: "jkbg.color.green", color: "green"}}
execute if score #uno.id.color.last jkbg.int matches 4 run summon marker 0 0 0 {Tags: ["jkbg", "jkbg_uno_last_color"], CustomName: {translate: "jkbg.color.yellow", color: "yellow"}}

tellraw @s ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.module.challenge.tip", with: [{selector: "@e[type=marker, tag=jkbg_uno_last_color, limit=1]", bold: true, hover_event: {action: "show_text", value: ""}}], color: "gold"}, "\n", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.module.challenge.rule", with: [{text: "4", bold: true}, {text: "6", bold: true}], color: "gold"}, "\n", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.uno.module.challenge.pass", color: "gold"}]

# 是否可以质疑成功
scoreboard players reset #uno.id.color.challenge jkbg.int
execute if score #uno.id.color.last jkbg.int matches 1 if score #uno.id.color.1 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1
execute if score #uno.id.color.last jkbg.int matches 2 if score #uno.id.color.2 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1
execute if score #uno.id.color.last jkbg.int matches 3 if score #uno.id.color.3 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1
execute if score #uno.id.color.last jkbg.int matches 4 if score #uno.id.color.4 jkbg.int matches 1 run scoreboard players set #uno.id.color.challenge jkbg.int 1

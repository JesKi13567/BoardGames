## 显示
# 大厅
execute as @e[tag=jkbg_lobby] run data modify entity @s view_range set value 1

# UNO
execute as @e[type=item_display, tag=jkbg_uno_card] run data modify entity @s view_range set value 0

## 任意游戏结束
execute if entity @p[scores={jkbg.leave=1..}] run tellraw @a ["", {text: "【桌游】", color: "green"}, {selector: "@p[scores={jkbg.leave=1..}]", hover_event: {action: "show_text", value: ""}}, " ", {text: "主动离开了游戏。", color: "yellow"}]
tellraw @a ["", {text: "【桌游】", color: "green"}, {text: "游戏结束！", color: "aqua"}]
function jkbg:games/lobby/init

# 打出牌标记
scoreboard players set #uno.yes jkbg.int 1

# 匹配id出牌
execute store result storage jkbg:uno cards.temp.value int 1 run scoreboard players get #uno.play jkbg.int

# 打出的就是点击时选中的那一张：直接用点击时记下的手牌索引（cards.temp.index）
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @s jkbg.player.id
function jkbg:1_uno/player/play/remove_from_index with storage jkbg:uno cards.temp

# 刷新
function jkbg:1_uno/player/inventory/playing

# 更新桌面卡牌
execute unless score #uno.play jkbg.int matches 500.. run scoreboard players operation #uno.this jkbg.int = #uno.play jkbg.int
function jkbg:1_uno/show/global

# 检测是否打完卡牌
execute as @s[scores={jkbg.uno.cards=1}] run tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, {text: " → ", color: "gray"}, {text: "U", color: "red"}, {text: "N", color: "blue"}, {text: "O", color: "green"}]
execute as @s[scores={jkbg.uno.cards=0}] run function jkbg:1_uno/player/play/empty

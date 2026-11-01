# 按次序排列
execute store result storage jkbg:uno rank.order int 1 run scoreboard players add #uno.id.order jkbg.int 1
function jkbg:1_uno/player/play/reduce/rank with storage jkbg:uno rank

# 自身处理
scoreboard players operation #uno.id.out jkbg.int = @s jkbg.player.id
scoreboard players reset @s jkbg.player.id
gamemode spectator @s
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, " ", {translate: "jkbg.uno.play.rank", color: "gold"}, " ", {text: "#", color: "yellow"}, {score: {name: "#uno.id.order", objective: "jkbg.int"}, color: "yellow"}]

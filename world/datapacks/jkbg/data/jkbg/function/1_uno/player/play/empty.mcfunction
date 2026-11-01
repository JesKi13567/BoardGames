# 玩家打完牌
execute as @a at @s run playsound entity.player.levelup player @s
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}, click_event: {action: "copy_to_clipboard", value: ""}}, " ", {translate: "jkbg.uno.play.finish", color: "gold"}]

execute if score #uno.rule.end jkbg.int matches 0 run function jkbg:1_uno/end/calculate_rank
execute if score #uno.rule.end jkbg.int matches 1 run function jkbg:1_uno/player/play/reduce/in

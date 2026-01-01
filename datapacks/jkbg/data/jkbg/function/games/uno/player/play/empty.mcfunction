# 玩家打完牌
execute as @a at @s run playsound entity.player.levelup player @s
tellraw @a ["", {text: "【桌游】", color: "green"}, {selector: "@s", hover_event: {action: "show_text", value: ""}}, " ", {text: "出完了手牌！", color: "gold"}]

execute if score #uno.rule.end jkbg.int matches 0 run function jkbg:games/uno/end/calculate_rank
execute if score #uno.rule.end jkbg.int matches 1 run function jkbg:games/uno/player/play/reduce/in

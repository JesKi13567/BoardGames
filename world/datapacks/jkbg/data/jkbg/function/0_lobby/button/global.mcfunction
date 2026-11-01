# 游戏设置
execute if score #game.type jkbg.int matches 1 as @s[tag=jkbg_uno_rule_draw_stack] run function jkbg:0_lobby/button/switcher {game: 'uno', id: 'draw_stack', F: {translate: "jkbg.enable.no", color: "red"}, T: {translate: "jkbg.enable.yes", color: "green"}}
execute if score #game.type jkbg.int matches 1 as @s[tag=jkbg_uno_rule_challenge] run function jkbg:0_lobby/button/switcher {game: 'uno', id: 'challenge', F: {translate: "jkbg.enable.no", color: "red"}, T: {translate: "jkbg.enable.yes", color: "green"}}
execute if score #game.type jkbg.int matches 1 as @s[tag=jkbg_uno_rule_end] run function jkbg:0_lobby/button/switcher {game: 'uno', id: 'end', F: {translate: "jkbg.uno.rule.end_condition.first", color: "green"}, T: {translate: "jkbg.uno.rule.end_condition.all", color: "green"}}

execute as @s[tag=!start] on target run effect give @s glowing 1 0 true
execute as @s[tag=!start] run playsound block.note_block.bell block @a

data remove entity @s attack
data remove entity @s interaction

# 检查人数
execute as @s[tag=!start] run return 0
execute if score #lobby.players.ready jkbg.int matches ..1 run function jkbg:0_lobby/ready/fail
execute if score #lobby.players.ready jkbg.int matches 2.. run function jkbg:0_lobby/ready/start

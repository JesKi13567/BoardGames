scoreboard players add #uno.cards.add jkbg.int 4

execute if score #uno.rule.draw_stack jkbg.int matches 1 run return 0

scoreboard players add #uno.cards.draw.show jkbg.int 4

execute if score #uno.rule.challenge jkbg.int matches 1 run return 0

function jkbg:1_uno/action_cards/skip
execute as @p[scores={jkbg.uno.turn=1}] run function jkbg:1_uno/draw/player_try
function jkbg:1_uno/action_cards/dir {dir: -1}

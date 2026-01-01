scoreboard players add #uno.cards.add jkbg.int 2
execute unless score #uno.rule.draw_stack jkbg.int matches 1 run scoreboard players add #uno.cards.draw.show jkbg.int 2

execute unless score #uno.rule.draw_stack jkbg.int matches 1 run function jkbg:games/uno/action_cards/skip
execute unless score #uno.rule.draw_stack jkbg.int matches 1 as @p[scores={jkbg.uno.turn=1}] run function jkbg:games/uno/draw/player_try
execute unless score #uno.rule.draw_stack jkbg.int matches 1 run function jkbg:games/uno/action_cards/only/prev

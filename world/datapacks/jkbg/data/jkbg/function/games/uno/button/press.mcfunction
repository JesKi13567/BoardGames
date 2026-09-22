execute as @s[tag=jkbg_uno_rule_draw_stack] run function jkbg:games/uno/button/press/draw_stack
execute as @s[tag=jkbg_uno_rule_challenge] run function jkbg:games/uno/button/press/challenge
execute as @s[tag=jkbg_uno_rule_end] run function jkbg:games/uno/button/press/end

execute on target run effect give @s glowing 1 0 true
playsound block.note_block.bell block @a
data remove entity @s interaction

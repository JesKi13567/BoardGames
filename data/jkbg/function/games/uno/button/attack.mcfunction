execute as @s[tag=jkbg_uno_rule_samsara] run function jkbg:games/uno/button/samsara

execute on attacker run effect give @s glowing 1 0 true
execute at @s run playsound block.note_block.bell player @a[distance=..6]
data remove entity @s attack

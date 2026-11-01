# 颜色方块
$execute as @s[scores={jkbg.uno.color=0}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=wild, tag=$(mem), limit=1] {item: {id: "white_wool"}, CustomName: {translate: "jkbg.uno.module.wild"}}
$execute as @s[scores={jkbg.uno.color=1}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=wild, tag=$(mem), limit=1] {item: {id: "red_wool"}, CustomName: {translate: "jkbg.color.red", color: "red"}}
$execute as @s[scores={jkbg.uno.color=2}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=wild, tag=$(mem), limit=1] {item: {id: "blue_wool"}, CustomName: {translate: "jkbg.color.blue", color: "blue"}}
$execute as @s[scores={jkbg.uno.color=3}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=wild, tag=$(mem), limit=1] {item: {id: "green_wool"}, CustomName: {translate: "jkbg.color.green", color: "green"}}
$execute as @s[scores={jkbg.uno.color=4}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=wild, tag=$(mem), limit=1] {item: {id: "yellow_wool"}, CustomName: {translate: "jkbg.color.yellow", color: "yellow"}}

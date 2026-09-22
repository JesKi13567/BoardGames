# 颜色方块
$execute as @s[scores={jkbg.uno.color=0}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=-2, tag=$(mem), limit=1] {item: {id: "white_wool"}, CustomName: "变色"}
$execute as @s[scores={jkbg.uno.color=1}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=-2, tag=$(mem), limit=1] {item: {id: "red_wool"}, CustomName: {text: "红色", color: "red"}}
$execute as @s[scores={jkbg.uno.color=2}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=-2, tag=$(mem), limit=1] {item: {id: "blue_wool"}, CustomName: {text: "蓝色", color: "blue"}}
$execute as @s[scores={jkbg.uno.color=3}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=-2, tag=$(mem), limit=1] {item: {id: "green_wool"}, CustomName: {text: "绿色", color: "green"}}
$execute as @s[scores={jkbg.uno.color=4}] run data merge entity @e[type=item_display, tag=jkbg_uno_number, tag=-2, tag=$(mem), limit=1] {item: {id: "yellow_wool"}, CustomName: {text: "黄色", color: "yellow"}}

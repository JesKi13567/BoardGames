# 判断当前玩家是否处于当前回合
execute on target unless score @s jkbg.player.id = @p[scores={jkbg.uno.turn=1}] jkbg.player.id run return run function jkbg:1_uno/player/inventory/cannot

## 出牌，找标签标号
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @p[scores={jkbg.uno.turn=1}] jkbg.player.id
function jkbg:1_uno/player/inventory/cards with storage jkbg:uno cards.temp

## 抓牌
execute as @s[tag=draw] on target run function jkbg:1_uno/draw/player_try

## 变色
execute as @s[tag=wild] on target run function jkbg:1_uno/player/color/switch

## 质疑
execute as @s[tag=challenge] on target run function jkbg:1_uno/action_cards/challenge/do

# 除变色外操作均重置质疑
execute as @s[tag=!wild] on target run scoreboard players reset @s jkbg.uno.challenge

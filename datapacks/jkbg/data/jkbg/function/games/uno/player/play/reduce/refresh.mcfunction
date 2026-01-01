# id递减
$data modify storage jkbg:uno cards.id.$(new) set from storage jkbg:uno cards.id.$(cur)
$data remove storage jkbg:uno cards.id.$(cur)

$execute if score @s jkbg.player.id = #lobby.players.total jkbg.int run kill @e[tag=jkbg_uno_number, tag=$(cur)]
scoreboard players remove @s jkbg.player.id 1

# 记录卡牌数
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @s jkbg.player.id
function jkbg:games/uno/player/record_cards with storage jkbg:uno cards.temp

# 遍历卡牌
scoreboard players operation #temp jkbg.int = @s jkbg.uno.cards
function jkbg:games/uno/player/inventory/playing_loop

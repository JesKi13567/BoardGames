# 丢出物品、使用卡牌、抓牌 -> 刷新
#say 我刷新
clear @s
item replace entity @s weapon.offhand with warped_fungus_on_a_stick[custom_data={jkbg:["uno","use"]},custom_name='[{"text": "[","color": "white","italic": false},{"keybind": "key.use"},"] ",{"text": "出牌","color": "yellow"}]']
item replace entity @s hotbar.7 with paper[custom_data={jkbg:["uno","draw"]},custom_model_data=500,custom_name='[{"text": "[","color": "white","italic": false},{"keybind": "key.use"},"] ",{"text": "抓牌","color": "yellow"}]',lore=['{"text": "抓牌即放弃本回合出牌。","color": "gray","italic": false}']]
function jkbg:games/uno/player/play/color_show

# 记录卡牌数
execute store result storage jkbg:uno cards.temp.mem int 1 run scoreboard players get @s jkbg.uno.order
function jkbg:games/uno/player/refresh_by_order with storage jkbg:uno cards.temp

# 遍历卡牌
scoreboard players operation #temp jkbg.int = @s jkbg.uno.cards
function jkbg:games/uno/player/refresh_

execute as @a[scores={jkbg.player.gametype=1,jkbg.player.state=0,jkbg.player.temp=1}] run item replace entity @s player.cursor with air
execute as @a[scores={jkbg.player.gametype=1,jkbg.player.state=0,jkbg.player.temp=1}] unless items entity @s inventory.10 #jkbg:uno/rule[custom_data={jkbg:["uno","rule","samsara"]}] run function jkbg:games/uno/player/inventory/ready_settings/samsara

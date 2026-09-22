scoreboard players reset #lobby.ready.flag jkbg.int
execute as @a at @s run playsound entity.villager.no player @s
tellraw @a ["", {text: "【桌游】", color: "green"}, {text: "人数不够，桌游已取消！", color: "red"}]

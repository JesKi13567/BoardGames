# 人数不够，无法开始
playsound entity.villager.no player @a
tellraw @a ["", {translate: "jkbg.lobby.bg", color: "green"}, {translate: "jkbg.lobby.not_enough", color: "red"}]

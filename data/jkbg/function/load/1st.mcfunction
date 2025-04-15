# 第一次加载
scoreboard players set #load jkbg.int 1
scoreboard players set #-1 jkbg.int -1
scoreboard players set #100 jkbg.int 100
scoreboard players set #uno.state jkbg.int 0

scoreboard objectives add jkbg.entity.Y dummy "实体高度"

scoreboard objectives add jkbg.player.ready dummy "玩家准备游戏"
scoreboard objectives add jkbg.player.temp dummy "玩家暂时值"
scoreboard objectives add jkbg.player.gametype dummy "玩家所在游戏种类"
scoreboard objectives add jkbg.player.state dummy "玩家状态"
scoreboard objectives add jkbg.player.drop custom:drop "玩家丢出物品"
scoreboard objectives add jkbg.player.food food "玩家饱食度"
scoreboard objectives add jkbg.player.death deathCount "死亡接口"
scoreboard objectives add jkbg.player.leave_game custom:leave_game "玩家离开游戏接口"
scoreboard objectives add jkbg.leave trigger "玩家主动离开游戏"

# uno
scoreboard objectives add jkbg.uno.order dummy "UNO游戏顺序"
scoreboard objectives add jkbg.uno.draw dummy "玩家抓了牌"
scoreboard objectives add jkbg.uno.turn dummy "玩家回合"
scoreboard objectives add jkbg.uno.color dummy "玩家选择颜色"
scoreboard objectives add jkbg.uno.cards dummy "玩家卡牌数"

# 游戏规则（暂定）
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule mobGriefing false
time set noon
weather clear
gamerule doImmediateRespawn true
gamerule spectatorsGenerateChunks false
gamerule randomTickSpeed 0
execute in overworld run gamerule keepInventory true
execute in the_nether run gamerule keepInventory true
execute in the_end run gamerule keepInventory true

# 执行循环
function jkbg:load/ticks/load

# 放置游戏桌面
schedule function jkbg:games/lobby/eggs 1s replace

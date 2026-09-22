scoreboard players set #uno.group jkbg.int 1

# 围挡
fill -4 101 -16 -4 101 15 barrier
fill 3 101 -16 3 101 15 barrier
fill -16 101 -4 15 101 -4 barrier
fill -16 101 3 15 101 3 barrier

# 玩家
execute as @p[scores={jkbg.player.id=1}] run function jkbg:games/uno/start/group/4/1
execute as @p[scores={jkbg.player.id=2}] run function jkbg:games/uno/start/group/4/2
execute as @p[scores={jkbg.player.id=3}] run function jkbg:games/uno/start/group/4/3
execute as @p[scores={jkbg.player.id=4}] run function jkbg:games/uno/start/group/4/4

# 排行榜
kill @e[tag=jkbg_rank]
summon text_display 3.0 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "1"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "1", color: "yellow"}, view_range: 0, Rotation: [180f, 0f]}
summon text_display 3.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "2"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "2", color: "yellow"}, view_range: 0, Rotation: [180f, 0f]}
summon text_display 3.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "3"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "3", color: "yellow"}, view_range: 0, Rotation: [180f, 0f]}
summon text_display 3.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "4"], brightness: {block: 15, sky: 15}, background: 0, text: {text: "4", color: "yellow"}, view_range: 0, Rotation: [180f, 0f]}
summon item_display 2.0 105.0 16.1 {Tags: ["jkbg", "jkbg_rank", "1"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display 2.0 104.0 16.1 {Tags: ["jkbg", "jkbg_rank", "2"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display 2.0 103.0 16.1 {Tags: ["jkbg", "jkbg_rank", "3"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon item_display 2.0 102.0 16.1 {Tags: ["jkbg", "jkbg_rank", "4"], brightness: {block: 15, sky: 15}, item: {id: "player_head"}, view_range: 0}
summon text_display 0.0 104.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "1"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}
summon text_display 0.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "2"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}
summon text_display 0.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "3"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}
summon text_display 0.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_name", "4"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -2.0 103.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "2"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -2.0 102.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "3"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}
execute if score #uno.rule.end jkbg.int matches 0 run summon text_display -2.0 101.6 15.99 {Tags: ["jkbg", "jkbg_rank", "player_score", "4"], brightness: {block: 15, sky: 15}, background: 0, view_range: 0, Rotation: [180f, 0f]}

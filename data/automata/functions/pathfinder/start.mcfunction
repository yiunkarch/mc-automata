# automata:pathfinder/start

# store target position
execute store result score #targetX automata.path.h run data get entity @e[tag=automata.path.target,limit=1,sort=nearest] Pos[0]
execute store result score #targetZ automata.path.h run data get entity @e[tag=automata.path.target,limit=1,sort=nearest] Pos[2]

scoreboard players set #next automata.path.g 0
execute align xyz run function automata:pathfinder/place_node
tag @e[tag=automata.path,limit=1,sort=nearest] add automata.path.start
# set start node to be explored first
scoreboard players set @e[tag=automata.path,limit=1,sort=nearest] automata.path.p 1

function automata:pathfinder/step

# once completed, backtrack from the goal to find shortest path
data remove entity @s ArmorItems[3].tag.automata.path
execute at @e[tag=automata.path,scores={automata.path.h=0},limit=1] run function automata:pathfinder/trace_path

kill @e[tag=automata.path]

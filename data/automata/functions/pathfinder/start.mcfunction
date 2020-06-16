# automata:pathfinder/start

# store target position
execute store result score #targetX automata.path.h run data get entity @e[tag=automata.path.target,limit=1,sort=nearest] Pos[0]
execute store result score #targetZ automata.path.h run data get entity @e[tag=automata.path.target,limit=1,sort=nearest] Pos[2]

scoreboard players set #next automata.path.g 0
execute align xyz run function automata:pathfinder/place_node

function automata:pathfinder/step

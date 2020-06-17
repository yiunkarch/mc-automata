# automata:automaton/find_target

# find path to target and store
tag @e[distance=..6,limit=1,sort=random,type=creeper] add automata.path.target

execute if entity @e[tag=automata.path.target] run function automata:pathfinder/start

tag @e[tag=automata.path.target] remove automata.path.target

# schedule set direction for the next move tick
scoreboard players set @s automata.move 10

scoreboard players set @s automata.repath 0

# automata:pathfinder/assign_parent

# make node face parent node
execute at @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] run tp @e[tag=automata.path,limit=1,sort=nearest] ~ ~ ~ facing entity @s

# set g value
scoreboard players operation @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] automata.path.g = #next automata.path.g

# calculate f value
execute as @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] run scoreboard players operation @s automata.path.f = @s automata.path.g
execute as @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] run scoreboard players operation @s automata.path.f += @s automata.path.h

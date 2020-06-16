# automata:pathfinder/create_new_node

# armor stand cannot be a marker because that breaks dx/dy/dz selectors
summon armor_stand ~.5 ~ ~.5 {Tags:["automata.path","automata.path.open"],Invisible:1,Invulnerable:1,DisabledSlots:7967}

# calculate distanc to target along x axis
execute as @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] store result score @s automata.path.h run data get entity @s Pos[0]
scoreboard players operation @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] automata.path.h -= #targetX automata.path.h
execute as @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] if score @s automata.path.h matches ..-1 run scoreboard players operation @s automata.path.h *= -1 automata.path.h

# calculate distance to target along z axis
# 	this is stored in a temporary variable to prevent changing dX
execute store result score #dZ automata.path.h run data get entity @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] Pos[2]
scoreboard players operation #dZ automata.path.h -= #targetZ automata.path.h
execute if score #dZ automata.path.h matches ..-1 run scoreboard players operation #dZ automata.path.h *= -1 automata.path.h

# calculate manhattan distance from target (self h value)
scoreboard players operation @e[tag=automata.path,limit=1,dx=0,dy=0,dz=0] automata.path.h += #dZ automata.path.h

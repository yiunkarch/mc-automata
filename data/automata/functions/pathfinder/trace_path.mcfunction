# automata:pathfinder/trace_path

particle barrier

data modify entity @s ArmorItems[3].tag.automata.path prepend from entity @e[tag=automata.path,sort=nearest,limit=1] Rotation[0]

# call this function on the node's parent
execute rotated as @e[tag=automata.path,sort=nearest,limit=1] positioned ^ ^ ^1 align xyz at @e[tag=automata.path,tag=!automata.path.start,limit=1,dx=0,dy=0,dz=0] run function automata:pathfinder/trace_path

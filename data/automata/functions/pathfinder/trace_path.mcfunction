# automata:pathfinder/trace_path

particle barrier

# call this function on the node's parent
execute positioned ^ ^ ^1 align xyz as @e[tag=automata.path,tag=!automata.path.start,limit=1,dx=0,dy=0,dz=0] at @s run function automata:pathfinder/trace_path

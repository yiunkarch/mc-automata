# automata:automaton/move

# face next direction
execute unless score @s automata.move matches ..9 run function automata:automaton/change_direction

# move little by little
execute at @s run tp @s ^ ^ ^0.1

scoreboard players add @s automata.move 1

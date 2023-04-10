#!/bin/bash
xterm -hold -e  "roslaunch my_robot world_and_robot.launch " &
pid1=$!

sleep 7

xterm  -hold -e  "roslaunch my_robot gmapping.launch" &
pid2=$!

wait $pid1 $pid2
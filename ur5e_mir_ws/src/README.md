# Requied dependencies:
Install the following dependencies in any terminal
```
sudo apt-get install ros-melodic-costmap-queue
sudo apt-get install ros-melodic-dwb-critics
sudo apt-get install ros-melodic-move-base-msgs
sudo apt-get install ros-melodic-rospy-message-conveter
sudo apt-get install ros-melodic-rospy-message-converter
sudo apt-get install ros-melodic-moveit-core
sudo apt-get install ros-melodic-moveit
sudo apt-get install ros-melodic-joint-state-publisher-gui
sudo apt-get install ros-melodic-ros-control 
sudo apt-get install ros-melodic-ros-controllers
```
Then run
```
sudo apt-get update
sudo apt-get dist-upgrade
```
Then Restart your computer, you may encounter errors if the computer is not restarted after the installation.

# How to use:
1. Initialise the workspace
```
cd ur5e_mir_ws/src
catkin_init_workspace
```
2. Make the project under the **ur5e_mir_ws** directory
```
cd ..
catkin_make
```
3. Add the path to your system with (needed for each terminal, one time solution)
```
source devel/setup.bash
``` 
or (add the path that works for every terminal)
```
echo "source ~/robotcontrol/ur5e_mir_ws/devel/setup.bash" >> ~/.bashrc
```
4. Launch the .launch file in Gazebo
```
roslaunch mir_gazebo mir_assembly.launch
```
5. Click the play button in the Gazebo gui, you shoild see the Rviz is started
6. Go back to your terminal, when you see "You can start planning now!",  you can then plan & execute
7.	 Change the **"Planning Group"** from "gripper" to "manipulator", change **"Goal State"** from "current" to "home_j", then click **"Plan & Execute"**, the robot should be moving in both Rviz and Gazebo.

 

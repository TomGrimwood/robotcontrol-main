# workstation
******************************ROS+gazebo+rviz(moveit)************************************

# using moveit in rviz to generate path for the ur5 in gazebo sim env

# UR robot driver must be: https://github.com/ros-industrial/universal_robot/tree/melodic-devel

$ roslaunch ur_e_gazebo ur5e.launch 

$ roslaunch ur5e_moveit_config ur5e_moveit_planning_execution.launch sim:=true limited:=true

$ roslaunch ur5e_moveit_config moveit_rviz.launch config:=true


reference: (how to attach ft sensor on the ur5 robot):

https://blog.csdn.net/bornfree5511/article/details/106354175/?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_title~default-1.control&spm=1001.2101.3001.4242


https://blog.csdn.net/u013745804/article/details/78951884?utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7EBlogCommendFromMachineLearnPai2%7Edefault-1.control&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7EBlogCommendFromMachineLearnPai2%7Edefault-1.control

****************************** add bash to pycharm *********************************

gedit ~/.local/share/applications/jetbrains-pycharm-ce.desktop

Exec=bash -i -c "/home/jiaxu/.local/share/JetBrains/Toolbox/apps/PyCharm-C/ch-0/212.4746.96/bin/pycharm.sh" %u

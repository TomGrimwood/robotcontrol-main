# # RobotControl

This is a repo holds all the code to control MiR100, UR5e, Robotiq 85 Gripper, Robotiq FT300 Sensor and Azure Kinect DK camera in the IAI Lab.

This repo has two parts:
- The first file **ur5e_mir_ws** is the work space for the mobile manipulator, for detailed instruction please refer to **ur5e_mir_ws -> src -> README.md**. 
- The second file **ur5e_workstation_ws**  is the work space for the workbench in IAI lab, for detailed instruction please refer to **ur5e_workstation_ws -> src -> README.md**

# Prerequisite

Before you use the code, please make sure your operating system is **Ubuntu18.04**, it may work on Ubuntu20.04 but it is not tested. Other packages required are:
 - **ROS Melodic**, refer to http://wiki.ros.org/melodic/Installation/Ubuntu for full installation guide.
 - **MoveIt!** , run ```sudo apt install ros-melodic-moveit```
 
## Azure Kinect DK
To use the Azure Kinect DK camera in the project, there are some steps need to be followed
1.  Install tools pack
```
sudo apt install k4a-tools
```
2. Install lib4a.dev
```
sudo apt install libk4a1.4-dev
```
3. Copy files for depth engine
```
cd /usr/lib/x86_64-linux-gnu/libk4a1.4
sudo cp libdepthengine.so.2.0 /usr/lib/x86_64-linux-gnu
```
4. Download the  SDK code from https://github.com/luckyluckydadada/Lucky-docker/releases/download/1/Azure-Kinect-Sensor-SDK-1.4.1.tgz
```
tar -xvf Azure-Kinect-Sensor-SDK-1.4.1.tgz
cd Azure-Kinect-Sensor-SDK-1.4.1
```
6. Install dependencies
```
sudo bash scripts/docker/setup-ubuntu.sh
```
7. Remove root limitations for running the SDK on ROS
```
sudo cp scripts/99-k4a.rules /etc/udev/rules.d/
```
8. Make and install the source code
```
cmake .
make
sudo make install
```
9. Run the **k4aviewer** to make sure the installation is correct (must use sudo here)
```
sudo k4aviewer
```

Above precedures are modified from

https://blog.csdn.net/weixin_48924581/article/details/121725418

https://blog.csdn.net/weixin_41965898/article/details/116451026

https://blog.csdn.net/CH_monsy/article/details/119391438

# Usage

To use this code, follow the instructions below to clone the project:
 - In your home directory, open a terminal and run:
 ```git clone https://github.com/uoa-iai/robotcontrol.git```
 - If you want to work with the mobile manipulator, please read the instructions in **robotcontrol -> ur5e_mir_ws -> src -> README.md**
 - If you want to work with the robot workstation, please read the instructions in **robotcontrol -> ur5e_workstation_ws -> src -> README.md**

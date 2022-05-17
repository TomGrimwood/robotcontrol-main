## Trying to install ur5e_mir_src

make folder dir ~/jiaxu_ws/src

<pre><font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~</b></font>$ mkdir -p ~/jiaxu_ws/src
</pre>

move contents of ur5e_mir_src into src

<pre><font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~</b></font>$ cd ~/jiaxu_ws/src/
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws/src</b></font>$ ls
CMakeLists.txt  <font color="#729FCF"><b>mir_robot-melodic-2.8</b></font>  <font color="#729FCF"><b>robotiq</b></font>  <font color="#729FCF"><b>universal_robot</b></font>  <font color="#729FCF"><b>vention_frame</b></font></pre>


update and get dependencies as descirbed by https://github.com/dfki-ric/mir_robot/tree/melodic

```Shell
# use rosdep to install all dependencies (including ROS itself)
sudo apt-get update -qq
sudo apt-get install -qq -y python-rosdep
sudo rosdep init
rosdep update
```
<pre><font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws/src</b></font>$ rosdep install --from-paths ./ -i -y --rosdistro melodic
ERROR: the following packages/stacks could not have their rosdep keys resolved
to system dependencies:
universal_robots: Cannot locate rosdep definition for [ur_gazebo]
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws/src</b></font>$ source /opt/ros/melodic/setup.bash 
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws/src</b></font>$ cd ..
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws</b></font>$ catkin_make
</pre>
<pre>Base path: /home/tom/jiaxu_ws
Source space: /home/tom/jiaxu_ws/src
Build space: /home/tom/jiaxu_ws/build
Devel space: /home/tom/jiaxu_ws/devel
Install space: /home/tom/jiaxu_ws/install
<font color="#3465A4">####</font>
<font color="#3465A4">#### Running command: </font><font color="#729FCF"><b>&quot;cmake /home/tom/jiaxu_ws/src -DCATKIN_DEVEL_PREFIX=/home/tom/jiaxu_ws/devel -DCMAKE_INSTALL_PREFIX=/home/tom/jiaxu_ws/install -G Unix Makefiles&quot;</b></font><font color="#3465A4"> in </font><font color="#729FCF"><b>&quot;/home/tom/jiaxu_ws/build&quot;</b></font>
<font color="#3465A4">####</font>
<font color="#EF2929"><b>CMake Error</b></font> at CMakeLists.txt:2:
  Parse error.  Expected &quot;(&quot;, got newline with text &quot;

  &quot;.


-- Configuring incomplete, errors occurred!
<font color="#CC0000">Invoking </font><font color="#EF2929"><b>&quot;cmake&quot;</b></font><font color="#CC0000"> failed</font>
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws</b></font>$ 
</pre>

delete and remake CMakeLists.txt in /src

<pre><font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws</b></font>$ rm ./src/CMakeLists.txt 
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws</b></font>$ cd src
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws/src</b></font>$ catkin_init_workspace 
Creating symlink &quot;/home/tom/jiaxu_ws/src/CMakeLists.txt&quot; pointing to &quot;/opt/ros/melodic/share/catkin/cmake/toplevel.cmake&quot;
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws/src</b></font>$ cd ..
<font color="#8AE234"><b>tom@tom-H87M-D3H</b></font>:<font color="#729FCF"><b>~/jiaxu_ws</b></font>$ catkin_make
</pre>


this is the error from catkin_make

<pre>ERROR:  /home/tom/jiaxu_ws/src/robotiq/robotiq_ft_sensor/msg/._ft_sensor.msg: Invalid declaration: &#x16;&#x2;Mac OS X        &#x2;	2�&#x2;�&#x1;&#x1e;ATTR;�����9&#x1;�9&#x15;com.apple.quarantine0083;627c5e43;Safari;BD09641A-0AB4-4E64-9503-D17558421472&#x1;&#x1;&#x1e;This resource fork intentionally left blank   &#x1;&#x1;&#x1e;&#x1c;&#x1e;��
robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_eus.dir/build.make:63: recipe for target &apos;/home/tom/jiaxu_ws/devel/share/roseus/ros/robotiq_ft_sensor/msg/ft_sensor.l&apos; failed
make[2]: *** [/home/tom/jiaxu_ws/devel/share/roseus/ros/robotiq_ft_sensor/msg/ft_sensor.l] Error 1
make[2]: *** Waiting for unfinished jobs....
CMakeFiles/Makefile2:5241: recipe for target &apos;robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_eus.dir/all&apos; failed
make[1]: *** [robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_eus.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
<font color="#AD7FA8"><b>Scanning dependencies of target robotiq_ft_sensor_generate_messages_nodejs</b></font>
[  2%] <font color="#729FCF"><b>Generating Javascript code from robotiq_ft_sensor/sensor_accessor.srv</b></font>
[  2%] <font color="#729FCF"><b>Generating Javascript code from robotiq_ft_sensor/ft_sensor.msg</b></font>
ERROR:  /home/tom/jiaxu_ws/src/robotiq/robotiq_ft_sensor/msg/._ft_sensor.msg: Invalid declaration: &#x16;&#x2;Mac OS X        &#x2;	2�&#x2;�&#x1;&#x1e;ATTR;�����9&#x1;�9&#x15;com.apple.quarantine0083;627c5e43;Safari;BD09641A-0AB4-4E64-9503-D17558421472&#x1;&#x1;&#x1e;This resource fork intentionally left blank   &#x1;&#x1;&#x1e;&#x1c;&#x1e;��
ERROR:  Invalid declaration: &#x16;&#x2;Mac OS X        &#x2;	2�&#x2;�&#x1;&#x1e;ATTR;�����9&#x1;�9&#x15;com.apple.quarantine0083;627c5e43;Safari;BD09641A-0AB4-4E64-9503-D17558421472&#x1;&#x1;&#x1e;This resource fork intentionally left blank   &#x1;&#x1;&#x1e;&#x1c;&#x1e;��
robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_nodejs.dir/build.make:62: recipe for target &apos;/home/tom/jiaxu_ws/devel/share/gennodejs/ros/robotiq_ft_sensor/msg/ft_sensor.js&apos; failed
make[2]: *** [/home/tom/jiaxu_ws/devel/share/gennodejs/ros/robotiq_ft_sensor/msg/ft_sensor.js] Error 1
make[2]: *** Waiting for unfinished jobs....
robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_nodejs.dir/build.make:67: recipe for target &apos;/home/tom/jiaxu_ws/devel/share/gennodejs/ros/robotiq_ft_sensor/srv/sensor_accessor.js&apos; failed
make[2]: *** [/home/tom/jiaxu_ws/devel/share/gennodejs/ros/robotiq_ft_sensor/srv/sensor_accessor.js] Error 1
CMakeFiles/Makefile2:4534: recipe for target &apos;robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_nodejs.dir/all&apos; failed
make[1]: *** [robotiq/robotiq_ft_sensor/CMakeFiles/robotiq_ft_sensor_generate_messages_nodejs.dir/all] Error 2
[  3%] <font color="#729FCF"><b>Generating Python srv __init__.py for robotiq_ft_sensor</b></font>
[  3%] <font color="#729FCF"><b>Generating Python msg __init__.py for robotiq_ft_sensor</b></font>
[  3%] Built target robotiq_ft_sensor_generate_messages_py
Makefile:140: recipe for target &apos;all&apos; failed
make: *** [all] Error 2
<font color="#CC0000">Invoking </font><font color="#EF2929"><b>&quot;make -j4 -l4&quot;</b></font><font color="#CC0000"> failed</font>
</pre>

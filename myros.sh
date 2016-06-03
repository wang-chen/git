#!/bin/bash 
# This program setting ROS environment 
# Please keyin {ROS_BUILDWS_NAME}, {USER_NAME} and {ROS_CATKINWS_NAME} string, then edit .bashrc add one line "source ~/myros.sh" 
# 
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin 
#export PATH 
USER_NAME='eee' 
ROS_USE_ROSBUILD='0'
ROS_INFO_TIME='0'
ROS_BUILDWS_NAME='indigo_workspace' 
#ROS_CATKINWS_NAME='NTU_Research_Group_ROS'
ROS_CATKINWS_NAME='drones'
ROS_REMOTE_IP='' 
#ROS_REMOTE_IP='192.168.1.127'
 
#Link MasterMind IP Address: 192.168.1.110
#Link MiniPC: 192.168.1.15 
#Link NCU MiniPC: 192.168.1.194 
 
#==Do not edit below========================================================  
if [ "$ROS_USE_ROSBUILD" = "1" ]; then 
#Setting ROS rosbuild workspace 
echo -e "\E[1;34mROS_PACKAGE_PATH (ROSBUILD) is setting.\E[0m" 
source ~/${ROS_BUILDWS_NAME}/setup.bash 
export ROS_PACKAGE_PATH=/home/${USER_NAME}/${ROS_BUILDWS_NAME}:${ROS_PACKAGE_PATH} 
 
#Add the NTU_Research_Group_ROS workspace 
#export ROS_PACKAGE_PATH=/home/chencl/NTU_Research_Group_ROS:${ROS_PACKAGE_PATH} 
else 
#Setting ROS catkin workspace 
echo -e "\E[1;34mROS_PACKAGE_PATH (CATKIN) is setting.\E[0m" 
source ~/${ROS_CATKINWS_NAME}/devel/setup.bash 
fi 
echo $ROS_PACKAGE_PATH 

#Setting ROS INFO Time in Display
if [ "$ROS_INFO_TIME" = "1" ]; then
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: ${message}'
echo -e "ROS_INFO_TIME: \E[1;36mVISIBLE\E[0m" 
else
export ROSCONSOLE_FORMAT='[${severity}]: ${message}'
echo -e "ROS_INFO_TIME: \E[1;36mINVISIBLE\E[0m" 
fi
 
#Get current using Wi-Fi information 
WLAN_IP=`ifconfig | grep 'inet addr:192.168' | sed 's/^.*addr://g' | sed 's/Bcast:.*$//g'` 
if [ "$WLAN_IP" = "" ]; then 
echo -e "\E[1;31;47m!!!!!No Local Network connect!!!!!\E[0m" 
export ROS_MASTER_URI=http://localhost:11311 
echo -e "ROS_MASTER_URI: \E[1;36m$ROS_MASTER_URI\E[0m"	 
else 
echo -e "Wi-Fi IP Address: \E[1;36m$WLAN_IP\E[0m" 
WLAN_SSID=`iwgetid -r` 
echo -e "Wi-Fi AP SSID: \E[1;36m$WLAN_SSID\E[0m" 
 
#Print ROS IP Setting 
export ROS_HOSTNAME=${WLAN_IP} 
export ROS_IP=${WLAN_IP} 
 
if [ "$ROS_REMOTE_IP" = "" ]; then 
export ROS_MASTER_URI=http://localhost:11311	 
else 
export ROS_MASTER_URI=http://${ROS_REMOTE_IP}:11311 
fi 
 
#echo "ROS_HOSTNAME: $ROS_HOSTNAME"  
echo -e "ROS_IP: \E[1;36m$ROS_IP\E[0m" 
echo -e "ROS_MASTER_URI: \E[1;36m$ROS_MASTER_URI\E[0m" 
fi 
 
#Print all ROS Environment Variable 
#env | grep ROS 

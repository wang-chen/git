# auto
## Author
  Jeffsan Chen Wang <jeffsan.wang@gmail.com>
## This repo is for auto user configuration, including:
  ROS indigo/kinetic environment
## GIT bash environment
  your git command environment will be very user-friendly.
## Fast command for "catkin_make". 
  you can use the command "ck" or "CK" in any directory to compile your ROS workspace. 
  
  Specifically, the following workspace.
  
      https://github.com/JeffsanC/drones
      
## Persistent names for ftdi-usb-serial devices. 
  After installation, any FTDI-based usb devices will appear in /dev/sensors/ftdi_[\*\*\*\*] with authority level [666].
  The [\*\*\*\*] will be replaced by the uqiue serial NO. of chips.
  This will speed up your experiments.
  
# To install it, run:
      cd ~
      git clone https://github.com/jeffsanc/auto.git
      cd auto
      ./install.sh

### Acknoledgement: Chen Chun-lin

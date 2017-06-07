# auto
## Author
  Wang Chen <wang.chen@zoho.com>

## Usage

  After installation, please find the file in your home folder "~/myros.sh".
  Then change the catkin workspace name according to your own workspace in your home folder, such as:
  
    ROS_CATKINWS_NAME='drones'
    
  Then, open a new terminal, enjoy it!

## This repo is for auto user configuration, including:
  ROS indigo/kinetic environment
## GIT bash environment
  your git command environment will be very user-friendly.
## Fast command for "catkin_make". 
  you can use the command "ck" or "CK" in any directory to compile your ROS workspace.
      
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

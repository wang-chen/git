# GIT Helper

  A repo to make git bash environment user-friendly.

## Author
   [Chen Wang](https://wang-chen.github.io)
  
  
## Installation
### Linux
   Simpley Run
   
      cd ~
      git clone https://github.com/wang-chen/git.git
      cd git
      ./install.sh && bash
    
### MacOS
1. Create a file ".bash_profile" in your home folder, if there is one already, skip this step.
    
2. For MacOS Catalina (MacOS 10.15) and after:
   
   2.1, Change your default shell from "/bin/zsh" to "/bin/bash" following [this link](https://support.apple.com/en-us/HT208050).
   
   2.2, Add the following line to your ".bash_profile". 
   
          export BASH_SILENCE_DEPRECATION_WARNING=1
          
   For earlier MacOS version, skip this step.
  
3. Run 
   
        cd ~
        git clone https://github.com/wang-chen/git.git
        cd git
        cp .git-prompt.sh ~/
        cp .git-completion.bash ~/
        cat ./.bashrc >> ~/.bash_profile

## What you get:
  
  1, Git command auto completion and its enviorment will be short.
  
  2, When you change directory to a git repo, it will show your current branch.
  
  ![Alt text](img/repo.png?raw=true "Title")
  
  3, When you checkout to another branch:
  
   ![Alt text](img/branch.png?raw=true "Title")
   
  4, When changing something, it will show "*"; when adding it to your repo, it will show "+":
  
   ![Alt text](img/change.png?raw=true "Title")
   
  5, Checkout back to master branch:
  
   ![Alt text](img/back.png?raw=true "Title")
   
   
  6, Note: It doesn't replace your git, it only shows where you are when you use git.
  
  7, If you want to know your current folder path, run:
        
    pwd
  
 
      
## To uninstall it:

   Simply delete the following lines, located at the end of the file '.bashrc' or ".bash_profile" in your home folder.

      #<--------------------------
      #<--------------------------
      # Add from https://github.com/wang-chen/git.git
      # Enable tab completion
      source ~/git-completion.bash
      # colors!
      green="\[\033[0;32m\]"
      blue="\[\033[0;34m\]"
      purple="\[\033[0;35m\]"
      reset="\[\033[0m\]"

      # Change command prompt
      source ~/git-prompt.sh
      export GIT_PS1_SHOWDIRTYSTATE=1
      # '\u' adds the name of the current user to the prompt
      # '\$(__git_ps1)' adds git-related stuff
      # '\W' adds the name of the current directory
      export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

      alias ls="ls -G"
      alias ll="ls -al -G"
      #--------------------------->
      #--------------------------->
      
      
  ## Acknoledgement:
  
    Udacity
     

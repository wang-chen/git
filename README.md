# GIT

  A repo to make git bash environment user-friendly.
## Author
   [Chen Wang](https://wang-chen.github.io)
  
  
## To install it, run:
      cd ~
      git clone https://github.com/wang-chen/git.git
      cd git
      ./install.sh

## What you get:
  
  1, The command enviorment will be short.
  
  2, When you change directory to a git repo, it will show your current branch.
  
  ![Alt text](img/repo.png?raw=true "Title")
  
  3, When you checkout to another branch:
  
   ![Alt text](img/branch.png?raw=true "Title")
   
  4, When you change something and add it to your git repo:
  
   ![Alt text](img/change.png?raw=true "Title")
   
  5, Checkout back to master branch:
  
   ![Alt text](img/back.png?raw=true "Title")
 
      
## To uninstall it:

   Simply delete the following lines, located at the end of the file '.bashrc' in your home folder.

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

      alias ls="ls --color=auto"
      alias ll="ls -al --color=auto"
      #--------------------------->
      #--------------------------->
      
      
  ## Acknoledgement:
  
    Udacity
     

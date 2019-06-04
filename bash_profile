export CLICOLOR=1
export LSCOLORS=Exfxaxdxcxegedabagacad 
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
MYTEMP="/Users/invisibleman/MyRepo/temp/"
CODE="/Users/invisibleman/MyRepo/Code/"
GOPATH="/Users/invisibleman/go"
GOBIN="${GOPATH}/bin"
GOROOT="/usr/local/go"
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${GOBIN}:${PATH}"
export PATH
export MYTEMP
export CODE
alias rm='rm -i'
alias g++='g++ -std=c++11'

# git log的简介表达
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev"

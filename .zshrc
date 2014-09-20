PROMPT="%{%B%F{cyan}%}─── "
RPS1='%B%F{black}%~%f%b'

autoload -U compinit; compinit
autoload -U colors; colors

setopt nocheckjobs
setopt CORRECT
setopt completealiases
setopt autocd
setopt cdablevars
setopt auto_menu

unsetopt BG_NICE
unsetopt menu_complete

export EDITOR="vim"
export BROWSER="dwb"
export HISTCONTROL=erasedups
export LANG="pt_PT.utf8"
export LANGUAGE="pt_PT.utf8"
export LC_ALL="pt_PT.utf8"
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# History
HISTFILE=~/.zsh-history
SAVEHIST=1000
HISTSIZE=1000

# Aliases
alias :q='exit'
alias v='vim'
alias e='sudo $EDITOR'
alias pacman='sudo pacman'
alias packer='sudo packer'
alias HIST='echo > ~/.zsh-history'
alias TMP='sudo /bin/rm -rf /tmp/* /tmp/.* &>/dev/null'
alias ls='ls -hF --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias -s {mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov,mp3,m3u,pls,webm}='mplayer'
alias -s {jpg,png,gif}='feh'
alias -s {txt,c,h,conf,tex,vim}='vim'
alias srm='sudo rm -rf'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias c+x='sudo chmod +x'
alias c-x='sudo chmod -x'
alias c666='sudo chmod 666'
alias c755='sudo chmod 755'
alias reboot='sudo shutdown -r now'
alias shutdown='sudo shutdown -h now'
alias gitad='git add'
alias gitcl='git clone'
alias gitco='git commit -m'
alias gitdi='git diff'
alias gitig='vim .gitignore'
alias gitin='git init'
alias gitlo='git log'
alias gitpl='git pull'
alias gitpu='git push -u origin master'
alias gitrm='git rm'
alias gitst='git status'
alias netspd='speedtest-cli'

# Configuration
conf()
{
	case $1 in
	zshrc)     vim ~/.zshrc ;;
	xinit)     vim ~/.xinitrc ;;
	xres)      vim ~/.Xresources && xrdb ~/.Xresources ;;
	2bwm)      vim ~/Git/2bwm/config.h ;;
  tmux)      vim ~/.tmux.conf ;;
  ncmpcpp)   vim ~/.ncmpcpp/config ;;
  ranger)    vim ~/.config/ranger/rc.conf ;;
	esac
}
youtube()
{
echo 'Opções:'
echo '- etho, beef, aurey, pause, bdouble, anderzel, blue ,generikb, subs '
case $1 in
 etho)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=EthosLab;;
 beef)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=VintageBeef;;
 pause)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=PauseUnpause;;
 bdouble)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=BdoubleO100;;
 anderzel)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=ImAnderZEL;;
 blue)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=BlueXephos;;
 aurey)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=Aureylian;;
 generikb)youtube-viewer --video-player=mpv --resolution=360p --results=10 --user=Generikb;;
 subs)youtube-viewer --video-player=mpv --resolution=360p -S -C -W;;
 *) echo "Não exite!"
 esac
}
## --mplayer=mpv --mplayer-args='--really-quiet'
#stream
play-stream()
{
  case $1 in
	anderzel) livestreamer http://www.twitch.tv/anderzel medium --player mpv ;;
	steel) livestreamer http://www.twitch.tv/steel_tv/ medium --player mpv;;
	aurey) livestreamer http://www.twitch.tv/aureylian medium --player mpv;;
  csgo) livestreamer http://www.twitch.tv/roomonfire medium --player mpv;;
  listar) echo 'Opções: anderzel, steel, subs, aurey, csgo ';;
  *)livestreamer $1 medium --player mpv
	esac    
}
# Radio
radio-station()
{
 case $1 in
 1) mplayer -nolirc http://7609.live.streamtheworld.com:80/977_JAMZ_SC ;;
 2) mplayer -nolirc http://5253.live.streamtheworld.com/VIRGINRADIO_DUBAIAAC ;;
 3) mplayer -nolirc http://uwstream2.somafm.com:5500 ;;
 #4) mplayer -nolirc ;; 
 #5) mplayer -nolirc ;;
 esac
}

# Colored Man Pages
man() {
  env \
      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
      LESS_TERMCAP_md=$(printf "\e[1;31m") \
      LESS_TERMCAP_me=$(printf "\e[0m") \
      LESS_TERMCAP_se=$(printf "\e[0m") \
      LESS_TERMCAP_so=$(printf "\e[37;1;30m") \
      LESS_TERMCAP_ue=$(printf "\e[32m") \
      LESS_TERMCAP_us=$(printf "\e[01;30m") \
   man "$@"
}

# Extra
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#eval $( dircolors -b $HOME/LS_COLORS )
#export LS_COLORS

# Extract
extract () {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2)   tar xvjf $1    ;;
*.tar.gz)    tar xvzf $1    ;;
*.bz2)       bunzip2 $1     ;;
*.rar)       unrar e $1     ;;
*.gz)        gunzip $1      ;;
*.tar)       tar xvf $1     ;;
*.tbz2)      tar xvjf $1    ;;
*.tgz)       tar xvzf $1    ;;
*.zip)       unzip $1       ;;
*.Z)         uncompress $1  ;;
*.7z)        7z x $1        ;;
*)           echo "don't know how to extract '$1'..." ;;
esac
else
	echo "'$1' is not a valid file!"
fi
}

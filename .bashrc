export EDITOR=/usr/bin/vim
export PATH=/opt/intel/bin:$PATH
export LD_LIBRARY_PATH=/opt/intel/composer_xe_2015/mkl/lib/intel64:/opt/intel/composer_xe_2015/lib/intel64:$LD_LIBRARY_PATH
source $HOME/venvs/networks/bin/activate

BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL


tunnel()
{
	hostname=$1;
	localport=$2;
	remoteport=$3;
	ssh -L $localport:localhost:$remoteport $hostname;
}

export PYTHONSTARTUP=/home/dmanik/.pythonstartup.py


export blogserv=134.76.24.238
alias vimserv="vim --servername LATEX "
alias killx="killall ~/.xmonad/xmonad-x86_64-linux"
alias mendeley="sudo mendeley_jailed"

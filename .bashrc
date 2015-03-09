export EDITOR=/usr/bin/vim
export PATH=/opt/intel/bin:$PATH
export LD_LIBRARY_PATH=/opt/intel/composer_xe_2015/mkl/lib/intel64:/opt/intel/composer_xe_2015/lib/intel64:$LD_LIBRARY_PATH


BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL



rand()	#rand 3 5 --> 3.65
{
	echo "scale=6;$1+$RANDOM*($2-$1)/32767" | bc;
	return 0;
}

mean()	#sum file_containing_single_column_of_numbers --> sum, of course
{
	sum=0;
	nline=0;
	for i in `cat $1 | grep  -E '^[0-9.]'`; do sum=`echo "$i+$sum" | bc`;nline=$(($nline+1)); done;
	
	echo "scale=4;$sum/$nline" | bc;
	return 0;
}

sdv()	#sum file_containing_single_column_of_numbers --> sum, of course
{
	mu=`mean $1`;
	sum=0;
	nline=0;
	for i in `cat $1 | grep  -E '^[0-9.]'`; do sum=`echo "$i^2+$sum" | bc`;nline=$(($nline+1)); done;
	
	echo "scale=4;sqrt($sum/$nline-mu^2)" | bc;
	return 0;
}


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

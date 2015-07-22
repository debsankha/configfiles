A Step-by-step list of things to do to replicate the environment in other computers
===================================================================================

## Install packages via package manager

1.  sudo apt-get install python3-virtualenv flake8 gfortran libatlas-base-dev gnome-terminal
2.  crete virtualenv
        - virtualenv -p python3.4 ~/venvs/networks 
        - pip install -r ~/configfiles/requirements.txt
3.  Install the gnome terminal theme:
        - source ~/configfiles/.config/base16-solarized.dark.sh

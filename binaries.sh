mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git config --global user.email "dabidgs3@hotmail.com"
git config --global user.name "dabidgs3"
gksu gedit ~/.bashrc
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
source .bashrc
ccache -M 5G


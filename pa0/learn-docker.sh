mkdir mydocker
cd mydocker
# https://hub.docker.com/editions/community/docker-ce-server-ubuntu
# DockerID twopothead email twopotheadcurie@gamil.com
# https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1
# mydocker/Dockerfile
sudo snap install docker
sudo docker build -t ics-image .
sudo docker images
sudo docker create --name=ics-vm -p 20022:22 --tmpfs /dev/shm:exec --privileged=true ics-image
sudo docker start ics-vm
ssh -p 20022 ics@127.0.0.1
#password is : ics
# exit ssh
exit
sudo docker stop ics-vm

sudo docker start ics-vm
ssh -p 20022 ics@127.0.0.1
# in docker:
sudo apt-get update
sudo apt-get install build-essential # build-essential packages, include binary utilities, gcc, make, and so on
sudo apt-get install man # on-line reference manual
sudo apt-get install gcc-doc # manual for GCC
sudo apt-get install gdb # GNU debugger
sudo apt-get install git # reversion control system
sudo apt-get install libreadline-dev # a library to use compile the project later
sudo apt-get install libsdl2-dev # a library to use compile the project later
sudo apt-get install qemu-system-x86 # QEMU
sudo apt-get install tmux
sudo apt-get install libsdl-dev
sudo apt-get install libsdl2-dev
# https://github.com/NJU-ProjectN/litenes
sudo apt-get install liballegro5-dev

mkdir pa
cd pa 
git clone -b 2018 https://github.com/NJU-ProjectN/ics-pa.git ics2018
cd ics2018
git config --global user.name "19215116-qiuri"
git config --global user.email "twopotheadcurie@gmail.com"
git config --global core.editor vim
git config --global color.ui true
git branch
bash init.sh
git checkout -b pa0
git checkout master
# https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
git remote -v
# origin	https://github.com/NJU-ProjectN/ics-pa.git (fetch)
# origin	https://github.com/NJU-ProjectN/ics-pa.git (push)
git remote rm origin
# 先手动在github网页建个仓库
git remote add origin https://github.com/Twopothead/ics2018.git
git remote -v
# origin	https://github.com/Twopothead/ics2018.git (fetch)
# origin	https://github.com/Twopothead/ics2018.git (push)
git push -u origin master
# Username for 'https://github.com': Twopothead
# Password for 'https://Twopothead@github.com':
# OK, repository ==> github

git checkout pa0
git config --global user.name "Twopothead"

# https://hub.docker.com/u/twopothead
# exit # exit from docker to ubuntu

# sudo docker login
# Username: twopothead
# Password: 
# now, upload my docker to cloud (http://blog.51cto.com/ckl893/2331628)
# curie@wife:~$ sudo docker ps -a
# CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                        PORTS               NAMES
# 79bac4931418        ics-image           "/bin/sh -c '/usr/sb…"   5 hours ago         Exited (137) 25 minutes ago                       ics-vm
# 00f24e81dafe        b3889ad99ec3        "/bin/sh -c 'apt-get…"   5 hours ago         Exited (100) 5 hours ago                          vigilant_wing
# 1e404da24da4        b3889ad99ec3        "/bin/sh -c 'apt-get…"   6 hours ago         Exited (100) 5 hours ago                          jolly_bohr

#回到ubuntu
git clone https://github.com/gwyn-smile/pa2018
cd pa2018/nexus-am
make
# Makefile.check:4: *** Environment variable AM_HOME must be defined..  Stop.
sudo gedit ~/.bashrc
# 环境变量AM_HOME需要包含nexus-am项目的根目录的绝对路径。
# 加入export AM_HOME='/home/curie/Code/freenet/pa2018/nexus-am'
source .bashrc
make #OK
cd pa2018/navy-apps
# Makefile.check:3: *** Must set NAVY_HOME environment variable.  Stop.
sudo gedit ~/.bashrc
# export pa2018='/home/curie/Code/freenet/pa2018'
# export AM_HOME=$pa2018'/nexus-am'
# export NAVY_HOME=$pa2018'/navy-apps'

cd ~/pa/ics2018/nexus-am/tests/cputest
make
#!/usr/bin/env bash

<<<<<<< HEAD
echo Installing python
echo -----------------
sudo apt-get install python python-pip -y
 
echo Installing pymongo
echo ----------------
sudo pip install pymongo
=======
echo Installing Python
echo ------------------
sudo apt-get update
sudo apt-get install python python-pip -y
>>>>>>> ff286832bd74e9d0d0079336e3cd3becde61f048

echo Installing puppet
echo -----------------
sudo apt-get update
sudo apt-get install puppet -y

echo Installing Pymongo
echo ------------------
sudo pip install pymongo

echo Copying all the puppet scripts
echo ------------------------------
sudo cp -r /vagrant/* /etc/puppet

echo Running puppet
echo --------------
cd /etc/puppet
sudo puppet apply -v gitserver/gitserver.pp

path=pwd

cd path

sh env.sh

echo Running the New Repository Creation Deamon
echo ------------------------------------------
cp /vagrant/gitserver/new-repod.upstart.templ /etc/init/newrepo.conf
sudo service newrepo start



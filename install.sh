echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" >  /etc/apt/sources.list.d/mongodb.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 68818C72E52529D4
service mongod start

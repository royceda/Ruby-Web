#!/bin/bash

sudo apt-get update;
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties;


cd;
wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz;
tar -xzvf ruby-2.1.5.tar.gz;
cd ruby-2.1.5/;
./configure;
make;
sudo make install;
ruby -v;

echo "gem: --no-ri --no-rdoc" > ~/.gemrc;


sudo add-apt-repository ppa:chris-lea/node.js;
sudo apt-get update;
sudo apt-get install nodejs;

gem install rails;

rbenv rehash;

rails -v;

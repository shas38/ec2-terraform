#!/bin/bash

apt install ruby -y
git clone https://github.com/rea-cruitment/simple-sinatra-app.git
cd simple-sinatra-app/
gem install bundler
bundle install
bundle exec rackup -p 80 --host 0.0.0.0
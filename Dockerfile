from ubuntu:12.04
maintainer KazuyukiMori <mainya@gmail.com>

# set max file descrpter
run ulimit -n 4096

# set locale
run locale-gen en_US.UTF-8
run update-locale LANG=en_US.UTF-8
env DEBIAN_FRONTEND noninteractive
env LC_ALL C
env LC_ALL en_US.UTF-8

# make sure the package repository is up to date
run echo "deb http://us.archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update

# install Ruby 2.0.0-p247
run apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev curl
run curl -L ftp://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.bz2 | tar -xj -C /tmp
run cd /tmp/ruby-2.0.0-p247 && ./configure --disable-install-doc && make install clean


run gem update --system

run rm -r /tmp/ruby-2.0.0-p247
run gem install bundler

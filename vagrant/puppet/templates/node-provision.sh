  if [ ! -d "/data" ]; then
	  mkdir /data
  fi
  mkdir -p /auto/ecs/bin
  echo "exit 0" > /auto/ecs/bin/install-dotfiles
  echo "installing ntpdate" 
  yum install -y ntpdate  tree rsync curl wget
  ntpdate 0.centos.pool.ntp.org 
   chkconfig puppet on
   
  cp /home/vagrant/puppet.conf  /etc/puppet/puppet.conf
  echo "updated puppet.conf 1...2...3..."
  echo "my provisions completed................................................"
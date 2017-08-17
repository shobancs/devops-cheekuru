  if [ ! -d "/data" ]; then
	  mkdir /data
  fi
  if [ ! -d "/opt/devops/code" ]; then
	  mkdir -p /opt/devops/code
  fi

echo "updating locale"
 echo 'LANG="en_US.UTF-8"' > /etc/locale.conf
  mkdir -p /auto/ecs/bin
  # rsync -avz /home/vagrant/devops /data/.
  chown vagrant:vagrant -R /opt/devops/code


  echo "exit 0" > /auto/ecs/bin/install-dotfiles
  chmod +x /auto/ecs/bin/install-dotfiles
  echo "installing ntpdate"
   yum install -y ntpdate  tree rsync curl wget unzip vim rpm-build rsync
  #ntpdate 0.centos.pool.ntp.org
   chkconfig puppet on

  cp /home/vagrant/devops/puppet.conf.vagrant  /etc/puppet/puppet.conf
  cat /home/vagrant/devops/id_rsa.pub >>  /home/vagrant/.ssh/authorized_keys
  yum update -y
  yum install epel-release -y
  yum install net-tools -y
  yum install docker -y
  yum install nodejs -y
  yum install python2 -y
  yum install maven -y

  echo "my provisions completed................................................"

# copy my public key over
 
	rpm -ivh https://yum.puppetlabs.com/el/7/products/x86_64/puppetlabs-release-7-10.noarch.rpm 
	rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 
	rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm 
	rpm -ivh http://yum.theforeman.org/releases/1.9/el7/x86_64/foreman-release.rpm 
	yum install -y ntpdate puppet puppet-server foreman-installer tree
	ntpdate 0.centos.pool.ntp.org 
	export LANG=en_US.UTF-8
	chkconfig puppetmaster on && service puppetmaster start
	foreman-installer
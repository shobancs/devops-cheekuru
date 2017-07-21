vagrant box add 'scheekur-centos7-puppet' https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box



# add to puppet.conf
server = scheekur-puppet.localhost
ca_server = <node-name>

## scheekur puppet network



## prereq's

## install default centos 7 boxes
```
vagrant init centos/7; vagrant up --provider virtualbox
vagrant plugin install vagrant-hosts
```
## Reset foreman password

# reset password http://erwan.com/en/2014/10/06/foreman-lost-reset-password/
```
sudo foreman-rake permissions:reset
```

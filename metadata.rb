name             "keystone"
maintainer       "Opscode, Inc."
maintainer_email "matt@opscode.com"
license          "Apache 2.0"
description      "The OpenStack Identity service Keystone."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "2012.2.0"

%w{ ubuntu fedora }.each do |os|
  supports os
endt

recipe           "keystone::db", "Configures database for use with keystone"
recipe           "keystone::server", "Installs and Configures Keystone Service"

depends          "database"
depends          "mysql"
depends          "openstack-common", ">= 0.1.4"
depends          "openstack-utils"

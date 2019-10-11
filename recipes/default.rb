#
# Cookbook:: django-website
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

include_recipe 'apt::default'
if platform_family?('debian')
  package 'mysql-client'
  package 'libmysqlclient-dev'
end

if platform_family?('rhel')
  package 'mariadb'
  package 'mariadb-devel'
end

include_recipe 'django_platform::default'


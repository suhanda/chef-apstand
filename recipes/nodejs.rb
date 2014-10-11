#
# Cookbook Name:: appsindo
# Recipe:: nodejs
#
# Copyright 2013, PT Appsindo Technology
# @author Erwin Saputra <erwin.saputra@at.co.id>
#
# All rights reserved - Do Not Redistribute
#

include_recipe "build-essential"
include_recipe "nodejs"
include_recipe "nodejs::npm"

# Install npm modules
%w{ grunt-cli bower forever yo }.each do |a_package|
  nodejs_npm a_package
end
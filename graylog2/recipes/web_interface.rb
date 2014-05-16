#
# Cookbook Name:: graylog2
# Recipe:: web_interface
#
# Copyright 2010, Medidata Solutions Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install required APT packages
package 'openjdk-7-jre'
package node['graylog2']['email_package'] if node['graylog2']['email_package']

# Create the release directory
directory "#{node['graylog2']['basedir']}/rel" do
  mode 0755
  recursive true
end

# Download the desired version of Graylog2 web interface from GitHub
remote_file "download_web_interface" do
  path "#{node['graylog2']['basedir']}/rel/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}.tgz"
  source "https://github.com/Graylog2/graylog2-web-interface/releases/download/#{node['graylog2']['web_interface']['version']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}.tgz"
  action :create_if_missing
end

# Unpack the desired version of Graylog2 web interface
execute "tar zxf graylog2-web-interface-#{node['graylog2']['web_interface']['version']}.tgz" do
  cwd "#{node['graylog2']['basedir']}/rel"
  creates "#{node['graylog2']['basedir']}/rel/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/build_date"
  action :nothing
  subscribes :run, 'remote_file[download_web_interface]', :immediately
end

# Link to the desired Graylog2 web interface version
link "#{node['graylog2']['basedir']}/web" do
  to "#{node['graylog2']['basedir']}/rel/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}"
end

# Create graylog2-web-interface.conf
template "#{node['graylog2']['basedir']}/web/conf/graylog2-web-interface.conf" do
  source 'graylog2-web-interface.conf.erb'
  mode 0644
  notifies :restart, 'service[graylog2-web-interface]', :delayed
end

template '/etc/init.d/graylog2-web-interface' do
  source 'graylog2-web-interface.init.erb'
  mode 0755
end

service 'graylog2-web-interface' do
  supports :status => true, :restart => true
  action [:enable, :start]
end

include_recipe "logrotate"
logrotate_app "graylog2_web_interface" do
  path File.join("/var/graylog2/web/logs", "*.log")
  frequency "daily"
  rotate 10
  create "644 root root"
end

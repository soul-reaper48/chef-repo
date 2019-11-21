#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apache2_site 'apache2' do
	homepage '<h1>Hi this is my first custom recipe </h1>'
end

apache2_info 'apache2' do
	systeminfo "Platform #{node['platform']}"
end

#apache2_apache2 'apache2_site' do
#	port 80
#	instance_name "Fusion"
#end

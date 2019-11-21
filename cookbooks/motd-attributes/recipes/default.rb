#
# Cookbook:: motd-attributes
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
require 'pp'

node.default['ipaddress'] = '1.1.1.1'
pp node.debug_value('ipaddress')

node.default['motd-attributes']['company'] = "Default"
node.default['motd-attributes']['message'] = "It's a good day to learn Chef"
pp node.debug_value('motd-attributes','company')


include_recipe "motd-attributes::message"
pp node.debug_value('motd-attributes','company')

template '/etc/motd' do
	source 'motd.erb'
	mode '0644'
end

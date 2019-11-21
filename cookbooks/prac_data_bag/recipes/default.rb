#
# Cookbook:: prac_data_bag
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

pass = Chef::DataBagItem.load("gitlab", "password")

file '/tmp/pass' do
	content "#{pass['id']}: #{pass['cred']}"
end

# Encrypted data bags !!

secret = Chef::EncryptedDataBagItem.load_secret("/etc/chef/encrypted_data_bag_secret")

keys = Chef::EncryptedDataBagItem.load("api_keys", "payment", secret)

file "/tmp/encrypted_data_dag" do
	content "#{keys['id']}: #{keys['apt_key']}"
end

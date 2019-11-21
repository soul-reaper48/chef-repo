property :systeminfo, String, default: "Hello from #{node['fqdn']}"

action :create do

	file '/etc/motd' do
		content new_resource.systeminfo
		mode '0644'
	end
end

property :instance_name, String, name_property: true
property :port, Integer, required: true

action :create do
  package 'apache2' do
    action :install
  end

  template "/var/www/html/index.html" do
    source 'index.html.erb'
    variables(
      instance_name: new_resource.instance_name,
      port: new_resource.port
    )
    action :create
  end

end

# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html

property :homepage, String, default: '<h1>Hello world!</h1>'

action :create do
  package 'apache2'

  service 'apache2' do
    action [:enable, :start]
  end

  file '/var/www/html/index.html' do
    content new_resource.homepage
  end
end


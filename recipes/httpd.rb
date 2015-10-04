package 'httpd'

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end


template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[httpd]'
end

##  Install tomcat7
  # Using bash resource to manually install
  # since CentOS default repo doesn't contain
  # tomcat v.7 for package installation.

template '/etc/init.d/tomcat' do
  source 'tomcat.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

remote_file "#{Chef::Config[:file_cache_path]}/#{node['lamp']['tomcat']['program']}-#{node['lamp']['tomcat']['version']}.tar.gz" do
  source node['lamp']['tomcat']['src']
  #http://supergsego.com/apache/tomcat/tomcat-7/v7.0.64/bin/apache-tomcat-7.0.64.tar.gz
  #checksum node[:program][:checksum]
  notifies :run, "bash[install_tomcat7]", :immediately
end

puts "***********************************************************************************"
puts "***********************************************************************************"
puts node['lamp']['tomcat']['src']
puts "***********************************************************************************"
puts "***********************************************************************************"

puts "***********************************************************************************"
puts "***********************************************************************************"
puts "#{Chef::Config[:file_cache_path]}"
puts "***********************************************************************************"
puts "***********************************************************************************"

bash 'install_tomcat7' do
  user 'root'
  cwd "#{Chef::Config[:file_cache_path]}"
  code <<-EOH
  tar -zvf "#{node['lamp']['tomcat']['program']}-#{node['lamp']['tomcat']['version']}.tar.gz"
  mv "#{node['lamp']['tomcat']['program']}-#{node['lamp']['tomcat']['version']}" /usr/bin/tomcat
  ./usr/bin/tomact/bin/startup.sh
  rm -f "#{node['lamp']['tomcat']['program']}-#{node['lamp']['tomcat']['version']}.tar.gz"
  service tomcat start
  EOH
  action :nothing
end






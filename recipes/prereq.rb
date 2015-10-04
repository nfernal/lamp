#Updates all installed packages and installs additional linux tools


 ###  this will update all packages -- including kernel major/minor versions
# execute "sudo yum -y update" do
# 	action :run
# end	




%w{ncompress sharutils net-tools nmap}.each do |pkg|
	package pkg do
		action :install
	end
end

service 'network' do
  supports :status => true, :restart => true, :reload => true
end

template 'iptables' do
  source 'iptables.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[network]'
end




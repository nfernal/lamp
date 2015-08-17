#Updates all installed packages and installs additional linux tools

execute "sudo yum -y update" do
	action :run
end	

%w{ncompress sharutils net-tools nmap}.each do |pkg|
	package pkg do
		action :install
	end
end
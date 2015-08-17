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

bash 'install_tomcat7' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget http://supergsego.com/apache/tomcat/tomcat-7/v7.0.63/bin/apache-tomcat-7.0.63.tar.gz
  tar xvf apache-tomcat-7.0.63.tar.gz
  mv apache-tomcat-7.0.63 /usr/bin/tomcat
  ./usr/bin/tomact/bin/startup.sh
  rm -f apache-tomcat-7.0.63.tar.gz
  service tomcat start
  EOH
end
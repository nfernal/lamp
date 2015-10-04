default['java']['jdk_version'] = 7
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true
default['apache']['mpm'] = 'rhel'
default['apache']['platform'] = 'centos'
default['jenkins']['master']['port'] = 8081
default['lamp']['java']['JAVA_HOME'] = '/usr/lib/jvm/java'
default['lamp']['java']['PATH'] = '$JAVA_HOME/bin:$PATH'
default['lamp']['java']['CATALINA_HOME'] = '/usr/bin/tomcat'
default['lamp']['tomcat']['url'] = 'http://supergsego.com/apache/tomcat/tomcat-7'
default['lamp']['tomcat']['version'] = '7.0.64'
default['lamp']['tomcat']['program'] = 'apache-tomcat'
default['lamp']['tomcat']['src'] = "#{node['lamp']['tomcat']['url']}/v#{node['lamp']['tomcat']['version']}/bin/#{node['lamp']['tomcat']['program']}-#{node['lamp']['tomcat']['version']}.tar.gz"

#http://supergsego.com/apache/tomcat/tomcat-7/v7.0.64/bin/apache-tomcat-7.0.64.tar.gz
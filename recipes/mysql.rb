##  Install mysql 
 #change service name and initial root password
mysql_service 'foo' do
  port '3306'
  version '5.6'
  initial_root_password 'password'  
  action [:create, :start]
end
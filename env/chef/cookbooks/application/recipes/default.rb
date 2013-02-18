#require_recipe "openssl"
#require_recipe "mysql::server"
require_recipe "apache2"
require_recipe "apache2::mod_php5"
#require_recipe "apache2::mod_rewrite"
require_recipe "php"
#require_recipe "php::module_mysql"
#require_recipe "php::module_curl"
#require_recipe "php::module_gd"

execute "disable-default-site" do
  command "sudo a2dissite default"
  notifies :reload, resources(:service => "apache2"), :delayed
end

execute "enable-php-additional-ini" do
  command "sudo ln -s /vagrant/env/php/additional.ini /etc/php5/apache2/conf.d/additional.ini"
  notifies :reload, resources(:service => "apache2"), :delayed
end

web_app "application" do
  template "application.conf.erb"
  notifies :reload, resources(:service => "apache2"), :delayed
end

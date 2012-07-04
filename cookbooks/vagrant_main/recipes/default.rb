#require_recipe "apt"
require_recipe "apache2"
require_recipe "apache2::mod_php5"
require_recipe "mysql"
require_recipe "php"
require_recipe "php::mod_mysql"

execute "disable-default-site" do
  command "sudo a2dissite default"
  notifies :reload, resources(:service => "apache2"), :delayed
end

web_app "project" do
  template "project.conf.erb"
  notifies :reload, resources(:service => "apache2"), :delayed
end

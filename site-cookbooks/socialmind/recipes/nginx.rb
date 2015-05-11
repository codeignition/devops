include_recipe "nginx"

template "/etc/nginx/conf.d/app.conf" do
  source "nginx/app.conf.erb"
  owner node['nginx']['user']
  group node['nginx']['user']
  mode "400"
  action :create
  variables(
    location: node['socialmind']['user_home'],
    app_name: 'socialmind'
  )
  notifies :reload, "service[nginx]"
end

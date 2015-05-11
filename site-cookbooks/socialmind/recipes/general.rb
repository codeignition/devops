node['socialmind']['packages'].each do |pack|
  package pack
end

user node['socialmind']['user'] do
  home node['socialmind']['user_home']
end

directory node['socialmind']['user_home'] do
  owner node['socialmind']['user']
  mode 00755
end

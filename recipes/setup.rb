package 'vim-enhanced'
package 'git'
package 'screen'
package 'tree' do
  action :install
end
package 'ntp' do
  action :install
end
node['ipaddress']
node['memory']['total']
template '/etc/motd' do
  source 'motd.erb' 
  action :create
  owner 'root'
  group 'root'
  mode '644'
end

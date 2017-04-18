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
file '/etc/motd' do
  content "Fuck Me
  IPADDRESS: #{node['ipaddress']}
  HOSTNAME: #{node['hostname']}
  MEMORY: #{node['memory']['total']}
  CPU: 
"
  action :create
  owner 'root'
  group 'root'
  mode '644'
end

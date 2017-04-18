package 'vim-enhanced'
package 'git'
package 'screen'
package 'tree' do
  action :install
end
package 'ntp' do
  action :install
end
file '/etc/motd' do
  content 'Fuck Me'
  action :create
  owner 'root'
  group 'root'
  mode '644'
end

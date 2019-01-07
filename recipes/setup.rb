package 'tree' do
  action :install
end

package 'nano' do
  action :install
end

package 'git' do
  action :install
end

package 'unzip'

package 'zip'


template '/etc/motd' do
  source 'motd.erb'
  variables({
    :host_desc => 'CHEF TEST SERVER',
    :chef_v => node['chef_packages']['chef']['version'],
    :ohai_v => node['chef_packages']['ohai']['version'] 
  })
  action :create
end

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
  action :create
end

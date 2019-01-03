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


file '/etc/motd' do
  content "This server belongs to K-Gohil Inc. Any un-authorise access to this box will be considered as a violation of Cyber Laws could result into legal actions.
        HOSTNAME 	: #{node['hostname']}
        IPADDRESS 	: #{node['ipaddress']}
        MEMORY		: #{node['memory']['total']}
        CPU		: #{node['cpu']['0']['mhz']}
"
  owner 'root'
  group 'root'
  mode  '0644'

end

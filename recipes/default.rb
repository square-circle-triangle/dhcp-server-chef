package "isc-dhcp-server"

service "isc-dhcp-server" do
  supports [ :restart, :status ]
  action [ :enable ]
end

template "/etc/dhcp/dhcpd.conf" do
  mode "0644"
  owner "root"
  group "root"
  source "dhcpd.conf.erb"
  notifies :restart, resources(:service => "isc-dhcp-server")
end

file '/etc/motd' do 
	content "Hostname of this box is: #{node['hostname'}" 
end

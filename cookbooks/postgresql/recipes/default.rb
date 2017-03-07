#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgresql-server' do 
	notifies :run, 'execute[postgresql-init]' # -> this is doing: it sends run signal to postgresql-init to run. 
end

execute 'postgresql-init' do 
	command 'postgresql-setup initdb'
	action :nothing
end

# execute the below to enable service, and then start it. 
service 'postgresql' do 
	action [:enable, :start]
end

#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update_sources' do
  action :update
end

package 'python'
package 'python-pip'

execute 'python-pip install plugins' do
  command 'pip install requests==2.3.0'
end

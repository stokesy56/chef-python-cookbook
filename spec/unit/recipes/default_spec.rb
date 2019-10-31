#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'Should install python' do
        expect(chef_run).to install_package 'python'
    end

    it 'Should install pip' do
        expect(chef_run).to install_package 'python-pip'
    end

    it 'provides requests plugin' do
      expect(chef_run).to run_execute('pip install requests==2.3.0')
    end
  end
end

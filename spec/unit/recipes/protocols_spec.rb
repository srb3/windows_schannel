#
# Cookbook Name:: windows_schannel
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'windows_schannel::protocols' do
  context 'When all attributes are default, on an windows platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012')
      runner.converge(described_recipe)
    end
    it 'configures the protocol tls_v1.0' do
      expect(chef_run).to create_registry_key('tls_v1.0')
    end
    it 'configures the protocol tls_v1.1' do
      expect(chef_run).to create_registry_key('tls_v1.1')
    end
    it 'configures the protocol tls_v1.2' do
      expect(chef_run).to create_registry_key('tls_v1.2')
    end
    it 'configures the protocol ssl_v2.0' do
      expect(chef_run).to create_registry_key('ssl_v2.0')
    end
    it 'configures the protocol ssl_v3.0' do
      expect(chef_run).to create_registry_key('ssl_v3.0')
    end
    it 'configures the protocol pct_v1.0' do
      expect(chef_run).to create_registry_key('pct_v1.0')
    end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end

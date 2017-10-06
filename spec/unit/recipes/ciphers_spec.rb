#
# Cookbook Name:: windows_schannel
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'windows_schannel::ciphers' do
  context 'When all attributes are default, on an windows platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012')
      runner.converge(described_recipe)
    end
    it 'configures the cipher null' do
      expect(chef_run).to create_registry_key('cipher_null')
    end
    it 'configures the cipher DES' do
      expect(chef_run).to create_registry_key('cipher_des')
    end
    it 'configures the cipher rc2' do
      expect(chef_run).to create_registry_key('RC2 40/128')
    end
    it 'configures the cipher rc4' do
      expect(chef_run).to create_registry_key('RC4 40/128')
      expect(chef_run).to create_registry_key('RC4 128/128')
    end
    it 'configures the cipher 3des' do
      expect(chef_run).to create_registry_key('cipher_3des')
    end
    it 'configures the cipher aes' do
      expect(chef_run).to create_registry_key('AES 128/128')
    end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end

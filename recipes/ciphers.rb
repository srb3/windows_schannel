#
# Cookbook Name:: windows_schannel
# Recipe:: ciphers
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
case node['platform']
when 'windows'
  if node['platform_version'].to_f >= 6.0 || node['platform_version'].to_f <= 6.3
    registry_key 'cipher_null' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['cipher_null']"
      }]
      action :create
      only_if { node['windows_schannel']['cipher_null'].is_a?(Integer) }
    end
    registry_key 'cipher_des' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['cipher_des']"
      }]
      action :create
      only_if { node['windows_schannel']['cipher_des'].is_a?(Integer) }
    end
    registry_key 'cipher_rc2' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['cipher_rc2']"
      }]
      action :create
      only_if { node['windows_schannel']['cipher_rc2'].is_a?(Integer) }
    end
    registry_key 'cipher_rc4' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['cipher_rc4']"
      }]
      action :create
      only_if { node['windows_schannel']['cipher_rc4'].is_a?(Integer) }
    end
    registry_key 'cipher_3des' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['cipher_3des']"
      }]
      action :create
      only_if { node['windows_schannel']['cipher_3des'].is_a?(Integer) }
    end
    registry_key 'cipher_aes' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['cipher_aes']"
      }]
      action :create
      only_if { node['windows_schannel']['cipher_aes'].is_a?(Integer) }
    end
  end
end

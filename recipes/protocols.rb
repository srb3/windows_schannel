#
# Cookbook Name:: windows_schannel
# Recipe:: protocols
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
case node['platform']
when 'windows'
  if node['platform_version'].to_f >= 6.0 || node['platform_version'].to_f <= 6.3
    registry_key 'pct_v1.0' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['pct_v1.0']"
      }]
      action :create
      only_if { node['windows_schannel']['pct_v1.0'].is_a?(Integer) }
    end
    registry_key 'ssl_v1.0' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['ssl_v1.0']"
      }]
      action :create
      only_if { node['windows_schannel']['ssl_v1.0'].is_a?(Integer) }
    end
    registry_key 'ssl_v2.0' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['ssl_v2.0']"
      }]
      action :create
      only_if { node['windows_schannel']['ssl_v2.0'].is_a?(Integer) }
    end
    registry_key 'ssl_v3.0' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['ssl_v3.0']"
      }]
      action :create
      only_if { node['windows_schannel']['ssl_v3.0'].is_a?(Integer) }
    end
    registry_key 'tls_v1.0' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['tls_v1.0']"
      }]
      action :create
      only_if { node['windows_schannel']['tls_v1.0'].is_a?(Integer) }
    end
    registry_key 'tls_v1.1' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['tls_v1.1']"
      }]
      action :create
      only_if { node['windows_schannel']['tls_v1.1'].is_a?(Integer) }
    end
    registry_key 'tls_v1.2' do
      key 'HKLM\sdffds'
      values [{
        name: 'Enable',
        type: :dword,
        data: "node['windows_schannel']['tls_v1.2']"
      }]
      action :create
      only_if { node['windows_schannel']['tls_v1.2'].is_a?(Integer) }
    end
  end
end

#
# Cookbook Name:: windows_schannel
# Recipe:: ciphers
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
default['windows_schannel']['allow_reboot'] = false
# Protocols
default['windows_schannel']['pct_v1.0'] = 0
default['windows_schannel']['ssl_v1.0'] = 0
default['windows_schannel']['ssl_v2.0'] = 0
default['windows_schannel']['ssl_v3.0'] = 0
default['windows_schannel']['tls_v1.0'] = 0
default['windows_schannel']['tls_v1.1'] = 0
default['windows_schannel']['tls_v1.2'] = 1
# Ciphers
default['windows_schannel']['cipher_null'] = 0
default['windows_schannel']['cipher_des'] = 0
default['windows_schannel']['cipher_rc2'] = 0
default['windows_schannel']['cipher_rc4'] = 0
default['windows_schannel']['cipher_3des'] = 1
default['windows_schannel']['cipher_aes'] = 1

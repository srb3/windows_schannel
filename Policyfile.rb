# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

name 'windows_schannel'

default_source :supermarket

run_list 'windows_schannel::default'

cookbook 'windows_schannel', path: '.'

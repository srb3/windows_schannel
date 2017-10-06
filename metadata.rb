name 'windows_schannel'
maintainer 'digitalgaz'
maintainer_email 'digitalgaz@hotmail.com'
license 'all_rights'
description 'Configures windows schannel security support provider (SSP). Use it to disable support for the protocols like SSL and the RC4 Cipher. One step towards meeting CIS PCI FIPS compliance.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.4'
supports 'windows'
source_url 'https://github.com/digitalGaz/windows_schannel'
issues_url 'https://github.com/digitalGaz/windows_schannel/issues' if respond_to?(:issues_url)

Windows Schannel Cookbook
=========================

Description
-------------
A cookbook to configure the windows Secure Channel ([Schannel][https://msdn.microsoft.com/en-us/library/windows/desktop/aa380123(v=vs.85).aspx] security support provider (SSP).
This SSP contains a set of security protocols and ciphers suites commonly used for HTTPS communications.

Many of the microsoft provided services make use of Schannel for their communication so by removing support for a given protocol, removes it for components.

You can use this cookbook to disable protocols & ciphers suites which have known security vulnerabilities and improve your security posture over the following microsoft services.

* Internet Information Services (IIS)
* Microsoft Remote Desktop (RDP) _when configured to use TLS_
* LDAPS (Active Directory)
* Global Catalog SSL (Active Directory)
* WinRM/HTTPS (Windows Remote Management)

TODO : Insert image of external scan before and after.

Cookbook Support for the following
----------------
### Protocols
Transport Layer Security (TLS) (v1.0 v1.1 v1.2)
Secure Socket Layer (SSL) (v1.0 v2.0 v3.0)
Private Communications Technology (PCT) (v1.0)

### Cipher Suites
DES
3DES
RC2
RC4
NULL
AES

Requirements
------------
#### Platforms
* Windows Server 2008 (R1, R2)
* Windows Server 2012 (R1, R2)

#### Chef
- Chef 11+

Attributes
----------
* `node['windows_schannel']['allow_reboot']` = `false` 
_changes made to protocols won't take affect until after a restart, this doesn't apply to ciphers. the default is false change this to true to initiate a reboot after the run._

#### Protocols
* `node['windows_schannel']['tls_v1.0']` = `0`
_should this protocol be enabled?.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['tls_v1.1']` = `0`
_should this protocol be enabled?.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['tls_v1.2']` = `1`
_should this protocol be enabled?.  the default is 1 which is enabled as its the current best practice_

* `node['windows_schannel']['ssl_v1.0']` = `0`
_should this protocol be enabled?.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['ssl_v2.0']` = `0`
_should this protocol be enabled?.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['ssl_v3.0']` = `0`
_should this protocol be enabled?.  the default is 0 which is disabled as its the current best practice_

* `node['windows_schannel']['pct_v1.0']` = `0`
_should this protocol be enabled?.  the default is 0 which is disabled as its the current best practice_

#### Ciphers
* `node['windows_schannel']['cipher_null']` = `0`
_should this type of ciphers be enabled?.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['cipher_des']` = `0`
_should this type of ciphers be enabled.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['cipher_rc2']` = `0`
_should this type of ciphers be enabled.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['cipher_rc4']` = `0`
_should this type of ciphers be enabled.  the default is 0 which is disabled as its the current best practice_
* `node['windows_schannel']['cipher_3des']` = `1`
_should this type of ciphers be enabled.  the default is 1 which is enabled to provide good client support_
* `node['windows_schannel']['cipher_aes']` = `1`
_should this type of ciphers be enabled.  the default is 1 which is enabled as its the current best practice_

License & Authors
-----------------
- Author:: Gary Bright (<user@dev.null>)

```text
Copyright 2016, Gary Bright

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
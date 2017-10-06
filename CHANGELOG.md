# windows_schannel Cookbook CHANGELOG

This file is used to list changes made in each version of the windows_schannel cookbook.

## 0.1.4 - (19-09-2016)

- Added RC4 128/128 to the RC4 cipher suite with RC4 128/128 unit test

## 0.1.3 - (20-06-2016)

- Changed the description to make it easyer to understand what it does in the supermarket

## 0.1.2 - (17-06-2016)

- Fixed some typo's in the README ready for relase to the supermarket.

## v0.1.1 (16-06-2016)

- Changed the attribute values to make it easier to read rather than 1 or 0, means it is now caSe sensitive
but I think its worth the trade off as its easier to interpret
- Added support for Hashes (MD5 and SHA) and Keyexchanges (DH)
- Refactored the ciphers to loop based on foodcritic
- Added reboot notifier for protocol changes.

## v0.1.0 (20-04-2016)

- Building the framework of the cookbook.
